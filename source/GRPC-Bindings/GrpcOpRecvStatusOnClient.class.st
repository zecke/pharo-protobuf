Class {
	#name : #GrpcOpRecvStatusOnClient,
	#superclass : #GrpcOpBase,
	#classVars : [
		'OFFSET_ERROR_STRING',
		'OFFSET_STATUS_CODE',
		'OFFSET_STATUS_DETAILS',
		'OFFSET_TRAILING_METADATA'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpRecvStatusOnClient class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(GrpcMetadataArray* trailing_metadata;
	"GrpcStatusCode* status_code; -- enums don't work like this in FFI"
	void* status_code;
	GrpcSlice* status_details;
	char** error_string;)
]

{ #category : #'as yet unclassified' }
GrpcOpRecvStatusOnClient class >> grpcOp [
	^GrpcOpType GRPC_OP_RECV_STATUS_ON_CLIENT
]

{ #category : #accessing }
GrpcOpRecvStatusOnClient >> default [
	| error_string |
	self trailing_metadata: GrpcMetadataArray initializedExternal.
	self status_code: GrpcStatusCode externalNew.
	self status_details: GrpcSlice externalEmpty.
	error_string := FFIOpaqueObject newPointer.
	error_string getHandle pointerAt: 1 put: ExternalAddress null.
	self error_string: error_string.
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> error_string [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ERROR_STRING) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> error_string: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ERROR_STRING put: anObject getHandle.
]

{ #category : #'as yet unclassified' }
GrpcOpRecvStatusOnClient >> grpcRelease [
	self trailing_metadata getHandle isNull ifFalse: [ self trailing_metadata releaseData ].
	self status_code getHandle isNull ifFalse: [ self status_code free ].
	self status_details getHandle isNull ifFalse: [self status_details releaseData ].
	self error_string getHandle isNull ifFalse: [
		| ptr |
		ptr := self error_string getHandle pointerAt: 1.
		ptr isNull ifFalse: [Gpr free: ptr].
		self error_string free].
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> status_code [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_STATUS_CODE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> status_code: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_STATUS_CODE put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> status_details [
	"This method was automatically generated"
	^GrpcSlice fromHandle: (handle pointerAt: OFFSET_STATUS_DETAILS)
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> status_details: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_STATUS_DETAILS put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> trailing_metadata [
	"This method was automatically generated"
	^GrpcMetadataArray fromHandle: (handle pointerAt: OFFSET_TRAILING_METADATA)
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> trailing_metadata: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TRAILING_METADATA put: anObject getHandle.
]
