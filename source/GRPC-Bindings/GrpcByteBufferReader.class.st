Class {
	#name : #GrpcByteBufferReader,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#instVars : [
		'initialized'
	],
	#classVars : [
		'OFFSET_BUFFER_IN',
		'OFFSET_BUFFER_OUT',
		'OFFSET_INDEX'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'library path' }
GrpcByteBufferReader class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'field definition' }
GrpcByteBufferReader class >> fieldsDesc [
	"override this method in a subclass to get an automatically generated
	field accessors.

	self rebuildFieldAccessors
	
	The field description format is following:
	
	#( 
 		type1 name1;
		type2 name2;
		....
	)
	"
	self flag: #todo. "Skip the union for now. and unsigned which might be 64bit on windows"
	^ #(
		GrpcByteBuffer* buffer_in;
		GrpcByteBuffer* buffer_out;
		uint index;
	)
]

{ #category : #'accessing structure variables' }
GrpcByteBufferReader >> buffer_in [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BUFFER_IN) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GrpcByteBufferReader >> buffer_in: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BUFFER_IN put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
GrpcByteBufferReader >> buffer_out [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BUFFER_OUT) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GrpcByteBufferReader >> buffer_out: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BUFFER_OUT put: anObject getHandle.
]

{ #category : #common }
GrpcByteBufferReader >> destroy [
	initialized ifFalse: [ ^self ].
	self ffiCall: 'void grpc_byte_buffer_destroy(self)'.
	initialized := false.
]

{ #category : #'accessing structure variables' }
GrpcByteBufferReader >> index [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_INDEX
]

{ #category : #'accessing structure variables' }
GrpcByteBufferReader >> index: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_INDEX put: anObject
]

{ #category : #common }
GrpcByteBufferReader >> init: aByteBuffer [
	^self ffiCall: 'int grpc_byte_buffer_reader_init(self, GrpcByteBuffer* aByteBuffer)'
]

{ #category : #'as yet unclassified' }
GrpcByteBufferReader >> initialize [
	super initialize.
	initialized := false
]

{ #category : #'as yet unclassified' }
GrpcByteBufferReader >> readAll [
	^self ffiCall: 'GrpcSlice grpc_byte_buffer_reader_readall(self)'
]

{ #category : #common }
GrpcByteBufferReader >> releaseData [
	self destroy.
	self free.
]
