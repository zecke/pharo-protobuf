Class {
	#name : #GrpcSliceInlined,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'Bytes',
		'OFFSET_DATA',
		'OFFSET_LENGTH'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'field definition' }
GrpcSliceInlined class >> fieldsDesc [
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
		byte length;
		Bytes data;
	)
]

{ #category : #'field definition' }
GrpcSliceInlined class >> initialize [
	self flag: #todo. "Get the right number for x86"
	Bytes := FFITypeArray ofType: #byte size: 23
]

{ #category : #'accessing structure variables' }
GrpcSliceInlined >> data [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIUInt8 size: 23) fromHandle: (handle copyFrom: OFFSET_DATA to: OFFSET_DATA + 22)
]

{ #category : #'accessing structure variables' }
GrpcSliceInlined >> data: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_DATA to: OFFSET_DATA + 22 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing structure variables' }
GrpcSliceInlined >> length [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_LENGTH
]

{ #category : #'accessing structure variables' }
GrpcSliceInlined >> length: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_LENGTH put: anObject
]
