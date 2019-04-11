Class {
	#name : #GrpcCompletionType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GRPC_OP_COMPLETE',
		'GRPC_QUEUE_SHUTDOWN',
		'GRPC_QUEUE_TIMEOUT'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'accessing enum' }
GrpcCompletionType class >> GRPC_OP_COMPLETE [
	"This method was automatically generated"
	^ GRPC_OP_COMPLETE
]

{ #category : #'accessing enum' }
GrpcCompletionType class >> GRPC_QUEUE_SHUTDOWN [
	"This method was automatically generated"
	^ GRPC_QUEUE_SHUTDOWN
]

{ #category : #'accessing enum' }
GrpcCompletionType class >> GRPC_QUEUE_TIMEOUT [
	"This method was automatically generated"
	^ GRPC_QUEUE_TIMEOUT
]

{ #category : #'class initialization' }
GrpcCompletionType class >> enumDecl [
	"self rebuildEnumAccessors."
	^ #(GRPC_QUEUE_SHUTDOWN 0
	GRPC_QUEUE_TIMEOUT 1
	GRPC_OP_COMPLETE 2)
]

{ #category : #'class initialization' }
GrpcCompletionType class >> initialize [
	self initializeEnumeration
]
