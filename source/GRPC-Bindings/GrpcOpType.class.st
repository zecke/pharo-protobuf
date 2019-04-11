Class {
	#name : #GrpcOpType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GRPC_OP_RECV_CLOSE_ON_SERVER',
		'GRPC_OP_RECV_INITIAL_METADATA',
		'GRPC_OP_RECV_MESSAGE',
		'GRPC_OP_RECV_STATUS_ON_CLIENT',
		'GRPC_OP_SEND_CLOSE_FROM_CLIENT',
		'GRPC_OP_SEND_INITIAL_METADATA',
		'GRPC_OP_SEND_MESSAGE',
		'GRPC_OP_SEND_STATUS_FROM_SERVER'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'accessing enum' }
GrpcOpType class >> GRPC_OP_RECV_CLOSE_ON_SERVER [
	"This method was automatically generated"
	^ GRPC_OP_RECV_CLOSE_ON_SERVER
]

{ #category : #'accessing enum' }
GrpcOpType class >> GRPC_OP_RECV_INITIAL_METADATA [
	"This method was automatically generated"
	^ GRPC_OP_RECV_INITIAL_METADATA
]

{ #category : #'accessing enum' }
GrpcOpType class >> GRPC_OP_RECV_MESSAGE [
	"This method was automatically generated"
	^ GRPC_OP_RECV_MESSAGE
]

{ #category : #'accessing enum' }
GrpcOpType class >> GRPC_OP_RECV_STATUS_ON_CLIENT [
	"This method was automatically generated"
	^ GRPC_OP_RECV_STATUS_ON_CLIENT
]

{ #category : #'accessing enum' }
GrpcOpType class >> GRPC_OP_SEND_CLOSE_FROM_CLIENT [
	"This method was automatically generated"
	^ GRPC_OP_SEND_CLOSE_FROM_CLIENT
]

{ #category : #'accessing enum' }
GrpcOpType class >> GRPC_OP_SEND_INITIAL_METADATA [
	"This method was automatically generated"
	^ GRPC_OP_SEND_INITIAL_METADATA
]

{ #category : #'accessing enum' }
GrpcOpType class >> GRPC_OP_SEND_MESSAGE [
	"This method was automatically generated"
	^ GRPC_OP_SEND_MESSAGE
]

{ #category : #'accessing enum' }
GrpcOpType class >> GRPC_OP_SEND_STATUS_FROM_SERVER [
	"This method was automatically generated"
	^ GRPC_OP_SEND_STATUS_FROM_SERVER
]

{ #category : #'class initialization' }
GrpcOpType class >> enumDecl [
	"self rebuildEnumAccessors."
	^ #(GRPC_OP_SEND_INITIAL_METADATA 0
	GRPC_OP_SEND_MESSAGE 1
	GRPC_OP_SEND_CLOSE_FROM_CLIENT 2
	GRPC_OP_SEND_STATUS_FROM_SERVER 3
	GRPC_OP_RECV_INITIAL_METADATA 4
	GRPC_OP_RECV_MESSAGE 5
	GRPC_OP_RECV_STATUS_ON_CLIENT 6
	GRPC_OP_RECV_CLOSE_ON_SERVER 7)
]

{ #category : #'class initialization' }
GrpcOpType class >> initialize [
	self initializeEnumeration
]
