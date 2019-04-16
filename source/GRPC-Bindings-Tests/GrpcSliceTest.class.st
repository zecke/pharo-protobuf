"
A GrpcSliceTest is a test class for testing the behavior of GrpcSlice
"
Class {
	#name : #GrpcSliceTest,
	#superclass : #TestCase,
	#category : #'GRPC-Bindings-Tests'
}

{ #category : #tests }
GrpcSliceTest >> testSlice_creation_external [
	| slice |
	slice := #[1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8] asGrpcSlice.
	self assert: slice asByteArray equals: #[1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8].

	"Ref/Unref and then release the ref and see it doesn't crash. This is inlined so
	these operations are bogus."
	slice ref.
	slice unref.
	slice release.
	
]

{ #category : #tests }
GrpcSliceTest >> testSlice_creation_inline [
	| slice |
	slice := #[1 2 3] asGrpcSlice.
	self assert: slice asByteArray equals: #[1 2 3].

	"Ref/Unref and then release the ref and see it doesn't crash. This is inlined so
	these operations are bogus."
	slice ref.
	slice unref.
	slice release.
	
]
