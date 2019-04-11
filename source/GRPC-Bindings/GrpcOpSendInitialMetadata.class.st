Class {
	#name : #GrpcOpSendInitialMetadata,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_COUNT',
		'OFFSET_MAYBE_COMPRESSION_LEVEL',
		'OFFSET_METADATA'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpSendInitialMetadata class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		size_t count;
		GrpcMetadata* metadata;
		GrpcOpSendInitialMetadataMaybeCompressionLevel maybe_compression_level;
		)
]
