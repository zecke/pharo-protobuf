Class {
	#name : #GrpcSliceRefcounted,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_BYTES',
		'OFFSET_LENGTH'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'field definition' }
GrpcSliceRefcounted class >> fieldsDesc [
	"override this method in a subclass to get an automatically generated
	field accessors.
	
	The field description format is following:
	
	#( 
 		type1 name1;
		type2 name2;
		....
	)
	"
	^ #(
		size_t length;
		byte* bytes;
	)
]

{ #category : #'accessing structure variables' }
GrpcSliceRefcounted >> bytes [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BYTES) type: ExternalType byte asPointerType
]

{ #category : #'accessing structure variables' }
GrpcSliceRefcounted >> bytes: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BYTES put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
GrpcSliceRefcounted >> length [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_LENGTH
]

{ #category : #'accessing structure variables' }
GrpcSliceRefcounted >> length: anObject [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_LENGTH put: anObject
]
