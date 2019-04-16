Class {
	#name : #GrpcChannel,
	#superclass : #FFIOpaqueObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings'
}

{ #category : #'library path' }
GrpcChannel class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'instance creation' }
GrpcChannel class >> newInsecure: aTarget [
	^(self ffiCall: 'GrpcChannel* grpc_insecure_channel_create(char* aTarget, nil, nil)')
		autoRelease
]

{ #category : #'as yet unclassified' }
GrpcChannel >> createCall: aQueue method: aMethodSlice deadline: aDeadline [
	^(self ffiCall: 'GrpcCall* grpc_channel_create_call(self, nil, 0, GrpcCompletionQueue* aQueue,
											GrpcSlice aMethodSlice, nil,
	                               GprTimespec aDeadline, nil)')
		autoRelease
]

{ #category : #'library path' }
GrpcChannel >> destroy [
	self ffiCall: 'void grpc_channel_destroy(self)'
]

{ #category : #'initialize-release' }
GrpcChannel >> free [
	"Free the handle pointed to by the receiver"
	(handle ~~ nil and:[handle isExternalAddress]) ifTrue:[
		self class primByteBufferDestroy: self].
	handle := nil.
]

{ #category : #'as yet unclassified' }
GrpcChannel >> getTarget [
	| target |
	target := self prim_get_target.
	^ [ target fromCString ] ensure: [Gpr free: target].
]

{ #category : #'as yet unclassified' }
GrpcChannel >> prim_get_target [
	^self ffiCall: 'void* grpc_channel_get_target(self)'
]

{ #category : #dependencies }
GrpcChannel >> release [
	handle ifNotNil: [self destroy].
	self free.
]
