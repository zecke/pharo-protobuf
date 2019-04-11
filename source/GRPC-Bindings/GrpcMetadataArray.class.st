Class {
	#name : #GrpcMetadataArray,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_CAPACITY',
		'OFFSET_COUNT',
		'OFFSET_METADATA'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcMetadataArray class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		size_t count;
		size_t capacity;
		GrpcMetadata* metadata;
		)
]

{ #category : #'accessing structure variables' }
GrpcMetadataArray >> capacity [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_CAPACITY
]

{ #category : #'accessing structure variables' }
GrpcMetadataArray >> capacity: anObject [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_CAPACITY put: anObject
]

{ #category : #'accessing structure variables' }
GrpcMetadataArray >> count [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_COUNT
]

{ #category : #'accessing structure variables' }
GrpcMetadataArray >> count: anObject [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_COUNT put: anObject
]

{ #category : #'accessing structure variables' }
GrpcMetadataArray >> metadata [
	"This method was automatically generated"
	^GrpcMetadata fromHandle: (handle pointerAt: OFFSET_METADATA)
]

{ #category : #'accessing structure variables' }
GrpcMetadataArray >> metadata: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_METADATA put: anObject getHandle.
]
