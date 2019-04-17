Class {
	#name : #GrpcConnectivityState,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GRPC_CHANNEL_CONNECTING',
		'GRPC_CHANNEL_IDLE',
		'GRPC_CHANNEL_READY',
		'GRPC_CHANNEL_SHUTDOWN',
		'GRPC_CHANNEL_TRANSIENT_FAILURE'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'enum declaration' }
GrpcConnectivityState class >> enumDecl [
	^ #(
  " channel is idle "
  GRPC_CHANNEL_IDLE 0
  " channel is connecting "
  GRPC_CHANNEL_CONNECTING 1
  " channel is ready for work "
  GRPC_CHANNEL_READY 2
  " channel has seen a failure but expects to recover "
  GRPC_CHANNEL_TRANSIENT_FAILURE 3
  " channel has seen a failure that it cannot recover from "
  GRPC_CHANNEL_SHUTDOWN 4
	)
]

{ #category : #'enum declaration' }
GrpcConnectivityState class >> initialize [
	self initializeEnumeration
]
