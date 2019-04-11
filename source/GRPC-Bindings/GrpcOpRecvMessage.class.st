Class {
	#name : #GrpcOpRecvMessage,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
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
