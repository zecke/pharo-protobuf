Extension { #name : #ByteArray }

{ #category : #'*GRPC-Bindings' }
ByteArray >> asGrpcSlice [
	"Convert to a copy of the data into a single slice."
	^(GrpcSlice primSliceCreate: self size: self size)
		initialize
]
