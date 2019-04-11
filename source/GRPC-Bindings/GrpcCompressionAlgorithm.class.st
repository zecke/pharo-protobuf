Class {
	#name : #GrpcCompressionAlgorithm,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GRPC_COMPRESS_ALGORITHMS_COUNT',
		'GRPC_COMPRESS_DEFLATE',
		'GRPC_COMPRESS_GZIP',
		'GRPC_COMPRESS_NONE',
		'GRPC_COMPRESS_STREAM_GZIP'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'accessing enum' }
GrpcCompressionAlgorithm class >> GRPC_COMPRESS_ALGORITHMS_COUNT [
	"This method was automatically generated"
	^ GRPC_COMPRESS_ALGORITHMS_COUNT
]

{ #category : #'accessing enum' }
GrpcCompressionAlgorithm class >> GRPC_COMPRESS_DEFLATE [
	"This method was automatically generated"
	^ GRPC_COMPRESS_DEFLATE
]

{ #category : #'accessing enum' }
GrpcCompressionAlgorithm class >> GRPC_COMPRESS_GZIP [
	"This method was automatically generated"
	^ GRPC_COMPRESS_GZIP
]

{ #category : #'accessing enum' }
GrpcCompressionAlgorithm class >> GRPC_COMPRESS_NONE [
	"This method was automatically generated"
	^ GRPC_COMPRESS_NONE
]

{ #category : #'accessing enum' }
GrpcCompressionAlgorithm class >> GRPC_COMPRESS_STREAM_GZIP [
	"This method was automatically generated"
	^ GRPC_COMPRESS_STREAM_GZIP
]

{ #category : #'enum declaration' }
GrpcCompressionAlgorithm class >> enumDecl [
	"self rebuildEnumAccessors."
	^ #(GRPC_COMPRESS_NONE 0
		GRPC_COMPRESS_DEFLATE 1
		GRPC_COMPRESS_GZIP 2
		GRPC_COMPRESS_STREAM_GZIP 3
		GRPC_COMPRESS_ALGORITHMS_COUNT 4)
]

{ #category : #'class initialization' }
GrpcCompressionAlgorithm class >> initialize [
	self initializeEnumeration
]
