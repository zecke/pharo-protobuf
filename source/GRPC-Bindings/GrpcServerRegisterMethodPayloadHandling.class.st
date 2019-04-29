Class {
	#name : #GrpcServerRegisterMethodPayloadHandling,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GRPC_SRM_PAYLOAD_NONE',
		'GRPC_SRM_PAYLOAD_READ_INITIAL_BYTE_BUFFER'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'accessing enum' }
GrpcServerRegisterMethodPayloadHandling class >> GRPC_SRM_PAYLOAD_NONE [
	"This method was automatically generated"
	^ GRPC_SRM_PAYLOAD_NONE
]

{ #category : #'accessing enum' }
GrpcServerRegisterMethodPayloadHandling class >> GRPC_SRM_PAYLOAD_READ_INITIAL_BYTE_BUFFER [
	"This method was automatically generated"
	^ GRPC_SRM_PAYLOAD_READ_INITIAL_BYTE_BUFFER
]

{ #category : #'enum declaration' }
GrpcServerRegisterMethodPayloadHandling class >> enumDecl [
	"self rebuildEnumAccessors."
	^ #(
		" Don't try to read the payload "
		GRPC_SRM_PAYLOAD_NONE 0
		" Read the initial payload as a byte buffer "
		GRPC_SRM_PAYLOAD_READ_INITIAL_BYTE_BUFFER 1
	)
]

{ #category : #'enum declaration' }
GrpcServerRegisterMethodPayloadHandling class >> initialize [
	self initializeEnumeration
]
