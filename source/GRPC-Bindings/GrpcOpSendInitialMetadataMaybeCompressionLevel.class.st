Class {
	#name : #GrpcOpSendInitialMetadataMaybeCompressionLevel,
	#superclass : #GrpcOpBase,
	#classVars : [
		'OFFSET_IS_SET',
		'OFFSET_LEVEL'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpSendInitialMetadataMaybeCompressionLevel class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		uint8 is_set;
		GrpcCompressionLevel level;
		)
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadataMaybeCompressionLevel >> is_set [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_IS_SET
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadataMaybeCompressionLevel >> is_set: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_IS_SET put: anObject
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadataMaybeCompressionLevel >> level [
	"This method was automatically generated"
	^GrpcCompressionLevel fromInteger: (handle unsignedLongAt: OFFSET_LEVEL)
]

{ #category : #'accessing structure variables' }
GrpcOpSendInitialMetadataMaybeCompressionLevel >> level: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LEVEL put: anObject value
]
