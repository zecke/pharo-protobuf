Class {
	#name : #GrpcOpRecvMessage,
	#superclass : #GrpcOpBase,
	#classVars : [
		'OFFSET_RECV_MESSAGE'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpRecvMessage class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(GrpcByteBuffer** recv_message)
]

{ #category : #'as yet unclassified' }
GrpcOpRecvMessage class >> grpcOp [
	^GrpcOpType GRPC_OP_RECV_MESSAGE
]

{ #category : #accessing }
GrpcOpRecvMessage >> default [
	"Create some space to store the pointer and zero initialize it"
	| pointerToByteBuffer |
	pointerToByteBuffer := GrpcByteBuffer newPointer.
	pointerToByteBuffer getHandle
		pointerAt: 1 put: ExternalAddress null.
	self recv_message:  pointerToByteBuffer
]

{ #category : #'as yet unclassified' }
GrpcOpRecvMessage >> grpcRelease [
	| pointer buffer |
	pointer := self recv_message.
	buffer := GrpcByteBuffer fromHandle: (pointer getHandle pointerAt: 1).
	buffer getHandle isNull ifFalse: [ buffer destroy ].
	"Free the pointer itself"
	pointer getHandle isNull ifFalse: [ pointer free ].
]

{ #category : #'accessing structure variables' }
GrpcOpRecvMessage >> recv_message [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_RECV_MESSAGE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GrpcOpRecvMessage >> recv_message: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RECV_MESSAGE put: anObject getHandle.
]
