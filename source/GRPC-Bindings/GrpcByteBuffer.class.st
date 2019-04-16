Class {
	#name : #GrpcByteBuffer,
	#superclass : #FFIOpaqueObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
GrpcByteBuffer class >> createRaw: anArray size: aSize [
	^(self ffiCall: 'GrpcByteBuffer grpc_raw_byte_buffer_create(void* anArray, size_t aSize)')
		autoRelease
]

{ #category : #'as yet unclassified' }
GrpcByteBuffer class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'instance creation' }
GrpcByteBuffer class >> new [
	self halt.
	^super new 
]

{ #category : #'as yet unclassified' }
GrpcByteBuffer class >> primByteBufferDestroy: aGrpcByteBuffer [ 
	self shouldBeImplemented.
]

{ #category : #'as yet unclassified' }
GrpcByteBuffer class >> primCreateRaw: slices size: aSize [
	^self ffiCall: 'GrpcByteBuffer* grpc_raw_byte_buffer_create(void* slices, size_t aSize)'
]

{ #category : #deleting }
GrpcByteBuffer >> destroy [
	self ffiCall: 'void grpc_byte_buffer_destroy(self)'
]

{ #category : #'initialize-release' }
GrpcByteBuffer >> free [
	"Free the handle pointed to by the receiver"
	(handle ~~ nil and:[handle isExternalAddress]) ifTrue:[
		self class primByteBufferDestroy: self].
	handle := nil.
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
	] ensure: [ reader release ]
]

{ #category : #'initialize-release' }
GrpcByteBuffer >> release [
	self destroy.
	self free.
]
