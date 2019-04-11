Class {
	#name : #GrpcEvent,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_SUCCESS',
		'OFFSET_TAG',
		'OFFSET_TYPE'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'field definition' }
GrpcEvent class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
		GrpcCompletionType type;
		int success;
		void* tag;
		)
]

{ #category : #'accessing structure variables' }
GrpcEvent >> success [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_SUCCESS
]

{ #category : #'accessing structure variables' }
GrpcEvent >> success: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_SUCCESS put: anObject
]

{ #category : #'accessing structure variables' }
GrpcEvent >> tag [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TAG) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GrpcEvent >> tag: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TAG put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
GrpcEvent >> type [
	"This method was automatically generated"
	^GrpcCompletionType fromInteger: (handle unsignedLongAt: OFFSET_TYPE)
]

{ #category : #'accessing structure variables' }
GrpcEvent >> type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TYPE put: anObject value
]
