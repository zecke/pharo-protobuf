Class {
	#name : #GrpcOpSendInitialMetadata,
	#superclass : #GrpcOpBase,
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

{ #category : #'as yet unclassified' }
GrpcOpSendInitialMetadata class >> grpcOp [
	^GrpcOpType GRPC_OP_SEND_INITIAL_METADATA
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadata >> count [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_COUNT
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadata >> count: anObject [
	"This method was automatically generated"
	^handle platformSizeTAt: OFFSET_COUNT put: anObject
]

{ #category : #accessing }
GrpcOpSendInitialMetadata >> default [
	self count: 0.
	self metadata: (ExternalData fromHandle: ExternalAddress new).
	self maybe_compression_level is_set: 0.
]

{ #category : #'as yet unclassified' }
GrpcOpSendInitialMetadata >> grpcRelease [
	| metadata |
	metadata := self metadata.
	metadata getHandle isNull ifFalse: [
		metadata key unref.
		metadata value unref.
		metadata free].
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadata >> maybe_compression_level [
	"This method was automatically generated"
	^ GrpcOpSendInitialMetadataMaybeCompressionLevel fromHandle: (handle referenceStructAt: OFFSET_MAYBE_COMPRESSION_LEVEL length: GrpcOpSendInitialMetadataMaybeCompressionLevel byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadata >> maybe_compression_level: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MAYBE_COMPRESSION_LEVEL put: anObject getHandle length: GrpcOpSendInitialMetadataMaybeCompressionLevel byteSize
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadata >> metadata [
	"This method was automatically generated"
	^GrpcMetadata fromHandle: (handle pointerAt: OFFSET_METADATA)
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadata >> metadata: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_METADATA put: anObject getHandle.
]

{ #category : #'as yet unclassified' }
GrpcOpSendInitialMetadata >> wahhhh [
	"Pair programmed with LL"
	self shouldBeImplemented.
]
