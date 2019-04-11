Class {
	#name : #GrpcOpRecvCloseOnServer,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_CANCELLED'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpRecvCloseOnServer class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		int* cancelled;
		)
]

{ #category : #'accessing structure variables' }
GrpcOpRecvCloseOnServer >> cancelled [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_CANCELLED) type: ExternalType long asPointerType
]

{ #category : #'accessing structure variables' }
GrpcOpRecvCloseOnServer >> cancelled: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CANCELLED put: anObject getHandle.
]
