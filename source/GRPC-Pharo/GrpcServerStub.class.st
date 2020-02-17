Class {
	#name : #GrpcServerStub,
	#superclass : #Object,
	#instVars : [
		'server',
		'queue',
		'registeredMethods'
	],
	#category : #'GRPC-Pharo'
}

{ #category : #'as yet unclassified' }
GrpcServerStub class >> initWith: aServer queue: aQueue [
	^self new
		server: aServer;
		queue: aQueue;
		yourself
]

{ #category : #'as yet unclassified' }
GrpcServerStub class >> installOn: aServer [
	self grpcServiceDescription do: [:each |
		
	].
]

{ #category : #displaying }
GrpcServerStub >> installOn: aServer [
	self grpcServiceDescription do: [:each |
		self registerMethod: each.
	].
]

{ #category : #displaying }
GrpcServerStub >> registerMethod: aDescriptor using: anAdapter [
	| methodPath handle |
	"Register one method with gRPC"
	methodPath := aDescriptor methodPath.
	handle := server register_method: methodPath payloadHandling: GrpcServerRegisterMethodPayloadHandling GRPC_SRM_PAYLOAD_NONE flags: 0.

	anAdapter scheduleCompletion: handle.

]
