Class {
	#name : #GrpcOpRecvInitialMetadata,
	#superclass : #GrpcOpBase,
	#classVars : [
		'OFFSET_RECV_INITIAL_METADATA'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpRecvInitialMetadata class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		GrpcMetadataArray* recv_initial_metadata;
		)
]

{ #category : #'as yet unclassified' }
GrpcOpRecvInitialMetadata class >> grpcOp [
	^GrpcOpType GRPC_OP_RECV_INITIAL_METADATA
]

{ #category : #'as yet unclassified' }
GrpcOpRecvInitialMetadata >> grpcRelease [
	| metadata |
	metadata := self recv_initial_metadata.
	metadata getHandle isNull ifFalse: [metadata release].
]

{ #category : #'accessing structure variables' }
GrpcOpRecvInitialMetadata >> recv_initial_metadata [
	"This method was automatically generated"
	^GrpcMetadataArray fromHandle: (handle pointerAt: OFFSET_RECV_INITIAL_METADATA)
]

{ #category : #'accessing structure variables' }
GrpcOpRecvInitialMetadata >> recv_initial_metadata: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RECV_INITIAL_METADATA put: anObject getHandle.
]
