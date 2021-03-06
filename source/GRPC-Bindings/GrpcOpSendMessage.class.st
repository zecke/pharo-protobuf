Class {
	#name : #GrpcOpSendMessage,
	#superclass : #GrpcOpBase,
	#classVars : [
		'OFFSET_SEND_MESSAGE'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpSendMessage class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(GrpcByteBuffer* send_message;)
]

{ #category : #'as yet unclassified' }
GrpcOpSendMessage class >> grpcOp [
	^GrpcOpType GRPC_OP_SEND_MESSAGE
]

{ #category : #'as yet unclassified' }
GrpcOpSendMessage >> grpcRelease [
	| buffer |
	buffer := self send_message.
	buffer getHandle isNull ifFalse: [ buffer releaseData ].
]

{ #category : #'accessing structure variables' }
GrpcOpSendMessage >> send_message [
	"Manually overriden.."
	^GrpcByteBuffer fromHandle: (handle pointerAt: OFFSET_SEND_MESSAGE)
]

{ #category : #'accessing structure variables' }
GrpcOpSendMessage >> send_message: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_SEND_MESSAGE put: anObject getHandle.
]
