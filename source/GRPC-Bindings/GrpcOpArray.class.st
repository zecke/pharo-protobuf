Class {
	#name : #GrpcOpArray,
	#superclass : #FFIExternalArray,
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'instance creation' }
GrpcOpArray class >> externalNew: size [ 
	^ self externalNewType: GrpcOp size: size
]

{ #category : #'as yet unclassified' }
GrpcOpArray >> findTag: aTag [
	| idx |
	idx := self findFirst: [:each | each op = aTag ].
	^self at: idx.
]

{ #category : #'as yet unclassified' }
GrpcOpArray >> grpcRelease [
	"Release the memory according to the ownership"
	self do: [:each |
		each grpcRelease
	].
	self free.
]
