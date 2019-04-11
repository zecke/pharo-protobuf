Class {
	#name : #GrpcOp,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_FLAGS',
		'OFFSET_OP',
		'OFFSET_RESERVED',
		'Reserved8'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOp class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		GrpcOpType op;
		uint32 flags;
		void* reserved;
		GrpcOpData data;
		)
]
