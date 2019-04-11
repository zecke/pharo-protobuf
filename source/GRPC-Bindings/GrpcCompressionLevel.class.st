Class {
	#name : #GrpcCompressionLevel,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GRPC_COMPRESS_LEVEL_COUNT',
		'GRPC_COMPRESS_LEVEL_HIGH',
		'GRPC_COMPRESS_LEVEL_LOW',
		'GRPC_COMPRESS_LEVEL_MED',
		'GRPC_COMPRESS_LEVEL_NONE'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'accessing enum' }
GrpcCompressionLevel class >> GRPC_COMPRESS_LEVEL_COUNT [
	"This method was automatically generated"
	^ GRPC_COMPRESS_LEVEL_COUNT
]

{ #category : #'accessing enum' }
GrpcCompressionLevel class >> GRPC_COMPRESS_LEVEL_HIGH [
	"This method was automatically generated"
	^ GRPC_COMPRESS_LEVEL_HIGH
]

{ #category : #'accessing enum' }
GrpcCompressionLevel class >> GRPC_COMPRESS_LEVEL_LOW [
	"This method was automatically generated"
	^ GRPC_COMPRESS_LEVEL_LOW
]

{ #category : #'accessing enum' }
GrpcCompressionLevel class >> GRPC_COMPRESS_LEVEL_MED [
	"This method was automatically generated"
	^ GRPC_COMPRESS_LEVEL_MED
]

{ #category : #'accessing enum' }
GrpcCompressionLevel class >> GRPC_COMPRESS_LEVEL_NONE [
	"This method was automatically generated"
	^ GRPC_COMPRESS_LEVEL_NONE
]

{ #category : #'enum declaration' }
GrpcCompressionLevel class >> enumDecl [
	"self rebuildEnumAccessors."
	^ #(GRPC_COMPRESS_LEVEL_NONE 0
	GRPC_COMPRESS_LEVEL_LOW 1
	GRPC_COMPRESS_LEVEL_MED 2
	GRPC_COMPRESS_LEVEL_HIGH 3
	GRPC_COMPRESS_LEVEL_COUNT 4
	)
]

{ #category : #'class initialization' }
GrpcCompressionLevel class >> initialize [
	self initializeEnumeration
]
