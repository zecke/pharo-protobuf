"
A GrpcByteBufferTest is a test class for testing the behavior of GrpcByteBuffer
"
Class {
	#name : #GrpcByteBufferTest,
	#superclass : #TestCase,
	#category : #'GRPC-Bindings-Tests'
}

{ #category : #tests }
GrpcByteBufferTest >> testCreation_release [
	| slice buffer |
	slice := #[1 2 3] asGrpcSlice.
	buffer := slice asGrpcByteArray.
	self assert: buffer length equals: 3.

	buffer releaseData.
	slice releaseData.
]

{ #category : #tests }
GrpcByteBufferTest >> testReadData_external [
	| slice buffer |
	slice := #[1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8] asGrpcSlice.
	buffer := slice asGrpcByteArray.
	slice releaseData.

	self assert: buffer length equals: 28.
	slice := buffer readAll.
	self assert: slice asByteArray equals: #[1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8].
	buffer releaseData.
	slice releaseData.
]

{ #category : #tests }
GrpcByteBufferTest >> testReadData_inlined [
	| slice buffer |
	slice := #[1 2 3] asGrpcSlice.
	buffer := slice asGrpcByteArray.
	slice releaseData.

	self assert: buffer length equals: 3.
	slice := buffer readAll.
	self assert: slice asByteArray equals: #[1 2 3].
	buffer releaseData.
	slice releaseData.
]
