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

{ #category : #'as yet unclassified' }
GrpcOp class >> with: aType [ 
	^GrpcOp new
		op: aType;
		flags: 0;
		reserved: (ExternalData fromHandle: ExternalAddress null)
]

{ #category : #'as yet unclassified' }
GrpcOp >> copyDataFrom: anOp [
	1 to: anOp class byteSize do: [:idx |
		self getHandle byteAt: (OFFSET_DATA + idx - 1) put: (anOp getHandle byteAt: idx) ]
]

{ #category : #'accessing structure variables' }
GrpcOp >> data [
	"This method was automatically generated"
	^ GrpcOpData fromHandle: (handle referenceStructAt: OFFSET_DATA length: GrpcOpData byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOp >> data: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DATA put: anObject getHandle length: GrpcOpData byteSize
]

{ #category : #'accessing structure variables' }
GrpcOp >> flags [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FLAGS
]

{ #category : #'accessing structure variables' }
GrpcOp >> flags: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FLAGS put: anObject
]

{ #category : #'as yet unclassified' }
GrpcOp >> grpcRelease [
	"I am not going to win an award for this..."
	| op |
	op := self op.
	op = GrpcOpType GRPC_OP_SEND_INITIAL_METADATA ifTrue: [ ^self data send_initial_metadata grpcRelease ].
	op = GrpcOpType GRPC_OP_SEND_MESSAGE ifTrue: [ ^self data send_message grpcRelease ].
	op = GrpcOpType GRPC_OP_SEND_CLOSE_FROM_CLIENT ifTrue: [ "nothing" ^self. ].
	op = GrpcOpType GRPC_OP_SEND_STATUS_FROM_SERVER ifTrue: [ self halt ].
	op = GrpcOpType GRPC_OP_RECV_INITIAL_METADATA ifTrue: [ ^self data recv_initial_metadata grpcRelease ].
	op = GrpcOpType GRPC_OP_RECV_MESSAGE ifTrue: [ ^self data recv_message grpcRelease ].
	op = GrpcOpType GRPC_OP_RECV_STATUS_ON_CLIENT ifTrue: [ ^self data recv_status_on_client grpcRelease ].
	op = GrpcOpType GRPC_OP_RECV_CLOSE_ON_SERVER ifTrue: [ self halt ].
	self error: 'Freeing data is not implemented'
]

{ #category : #'accessing structure variables' }
GrpcOp >> op [
	"This method was automatically generated"
	^GrpcOpType fromInteger: (handle unsignedLongAt: OFFSET_OP)
]

{ #category : #'accessing structure variables' }
GrpcOp >> op: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_OP put: anObject value
]

{ #category : #'accessing structure variables' }
GrpcOp >> reserved [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_RESERVED) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GrpcOp >> reserved: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RESERVED put: anObject getHandle.
]
