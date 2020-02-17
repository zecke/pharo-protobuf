Class {
	#name : #GrpcClientStub,
	#superclass : #Object,
	#instVars : [
		'channel',
		'queue'
	],
	#category : #'GRPC-Pharo'
}

{ #category : #'as yet unclassified' }
GrpcClientStub class >> initWith: aChannel queue: aQueue [
	^self new
		channel: aChannel;
		queue: aQueue;
		yourself
]

{ #category : #'as yet unclassified' }
GrpcClientStub >> channel: aGrpcChannel [ 
	channel := aGrpcChannel
]

{ #category : #'as yet unclassified' }
GrpcClientStub >> genericUnaryCall: aMethodName param: anEncodedParameter resultClass: aResultClass timeout: aTimeout [
	| methodSlice gprTimespec call batch encodedSlice |
	methodSlice := aMethodName asGrpcSlice.
	gprTimespec := GprTimespec fromDuration: aTimeout type: GprClockType GPR_TIMESPAN.
	call := [ 
		channel createCall: queue method: methodSlice deadline: gprTimespec
	] ensure: [ methodSlice releaseData ].

	encodedSlice := anEncodedParameter asGrpcSlice.
	^[
		| queueTag res |
		batch := OrderedCollection new
			add: GrpcOpSendInitialMetadata new default asGrpcOp;
			add: (GrpcOpSendMessage new
				send_message: encodedSlice asGrpcByteArray;
				asGrpcOp);
			add: GrpcOpRecvInitialMetadata new asGrpcOp;
			add: GrpcOpRecvMessage new default asGrpcOp;
			add: (GrpcOp with: (GrpcOpType GRPC_OP_SEND_CLOSE_FROM_CLIENT));
			add: GrpcOpRecvStatusOnClient new default asGrpcOp;
			asExternalGrcOpArray.
		queueTag := queue nextTag.
		res := call start_batch: batch size: batch size tag: queueTag handle.
		res = GrpcCallError GRPC_CALL_OK ifFalse: [
			^PharoGrpcCallError signal: 'Creating the call failed.'].
		queueTag waitForCompletion.
		queueTag result success = 0
			ifTrue: [ PharoGrpcCallError signal: 'Call did not complete' ]
			ifFalse: [ self handleResult: queueTag result batch: batch resultClass: aResultClass].
	] ensure: [
		encodedSlice releaseData.
		call cancel.
		call releaseData.
		batch grpcRelease ]
]

{ #category : #'as yet unclassified' }
GrpcClientStub >> handleResult: aResult batch: aBatch resultClass: aResultClass [
	| status statusCode encodedData |
	status := aBatch findTag: GrpcOpType GRPC_OP_RECV_STATUS_ON_CLIENT.
	statusCode := status data recv_status_on_client statusCode.
	statusCode = GrpcStatusCode GRPC_STATUS_OK ifFalse: [
		^PharoGrpcCallError signal: 'Received an error: ', statusCode item.
	].
	encodedData := (aBatch findTag: GrpcOpType GRPC_OP_RECV_MESSAGE) data recv_message asByteArray.
	^aResultClass unmarshalFrom: encodedData readStream.
]

{ #category : #'as yet unclassified' }
GrpcClientStub >> queue: aGrpcCompletionQueue [ 
	queue := aGrpcCompletionQueue
]
