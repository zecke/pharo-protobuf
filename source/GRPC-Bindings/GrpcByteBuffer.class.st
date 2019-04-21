Class {
	#name : #GrpcByteBuffer,
	#superclass : #FFIOpaqueObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
GrpcByteBuffer class >> createRaw: anArray size: aSize [
	| buffer |
	buffer := self primCreateRaw: anArray size: aSize.
	buffer getHandle isExternalAddress ifFalse: [ 
		buffer handle: buffer getHandle getHandle ].
	^buffer
]

{ #category : #'as yet unclassified' }
GrpcByteBuffer class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'as yet unclassified' }
GrpcByteBuffer class >> primByteBufferDestroy: aGrpcByteBuffer [ 
	self ffiCall: 'void grpc_slice_buffer_destroy(GrpcByteBuffer* aGrpcByteBuffer)'
]

{ #category : #'as yet unclassified' }
GrpcByteBuffer class >> primCreateRaw: slices size: aSize [
	^self ffiCall: 'GrpcByteBuffer* grpc_raw_byte_buffer_create(void* slices, size_t aSize)'
]

{ #category : #deleting }
GrpcByteBuffer >> destroy [
	self ffiCall: 'void grpc_byte_buffer_destroy(self)'
]

{ #category : #accessing }
GrpcByteBuffer >> length [
	^self ffiCall: 'size_t grpc_byte_buffer_length(self)'
]

{ #category : #'as yet unclassified' }
GrpcByteBuffer >> readAll [
	"Reads all from the ByteBuffer and returns it as uncompressed slice"
	| reader |
	reader := GrpcByteBufferReader externalNew.
	^[
		reader init: self.
		reader readAll.
	] ensure: [ reader releaseData ]
]

{ #category : #'as yet unclassified' }
GrpcByteBuffer >> readAllAsByteArray [
	| slice |
	slice := self readAll.
	^[ slice asByteArray ] ensure: [ slice unref ].
]

{ #category : #'initialize-release' }
GrpcByteBuffer >> releaseData [
	self destroy.
]
