Class {
	#name : #GrpcOpSendMessage,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_SEND_MESSAGE'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'as yet unclassified' }
GrpcOpSendMessage class >> fieldDesc [
	
]

{ #category : #'field definition' }
GrpcOpSendMessage class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(GrpcByteBuffer* send_message;)
]

{ #category : #'accessing structure variables' }
GrpcOpSendMessage >> send_message [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_SEND_MESSAGE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GrpcOpSendMessage >> send_message: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_SEND_MESSAGE put: anObject getHandle.
]
