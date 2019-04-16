Extension { #name : #SequenceableCollection }

{ #category : #'*GRPC-Bindings' }
SequenceableCollection >> asExternalGrcOpArray [
	| externalArray |
	externalArray := GrpcOpArray externalNew: self size.
	self doWithIndex: [:each :i |
		externalArray at: i put: each
	].
	^externalArray
]
