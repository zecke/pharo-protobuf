Class {
	#name : #GrpcOpRecvStatusOnClient,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
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
	GrpcStatusCode* status_code;
	GrpcSlice* status_details;
	char** error_string;)
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

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> status_code [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_STATUS_CODE) type: ExternalType long asPointerType
]

{ #category : #'accessing structure variables' }
GrpcOpRecvStatusOnClient >> status_code: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_STATUS_CODE put: anObject value
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
