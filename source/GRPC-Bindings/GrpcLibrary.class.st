Class {
	#name : #GrpcLibrary,
	#superclass : #FFILibrary,
	#instVars : [
		'initialized',
		'queue'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'accessing platform' }
GrpcLibrary class >> initialize [
	"Required to reset the Initialized flag on image startup.
	Force grpc initialization since we just installed grpc.
	Otherwise this would cause a grpc crash"
	
	Smalltalk addToStartUpList: self.
	self uniqueInstance initializeGrpc
]

{ #category : #'accessing platform' }
GrpcLibrary class >> startUp: isImageStarting [

	isImageStarting ifTrue: [
		"Stop all completion queues. TODO(zecke): Time them out as well?"
		GrpcCompletionQueue allInstancesDo: [:each | each quit ].

		self uniqueInstance initializeGrpc.
	]
]

{ #category : #'accessing platform' }
GrpcLibrary >> completionQueue [
	^queue
]

{ #category : #'accessing platform' }
GrpcLibrary >> grpc_init [
	self ffiCall: #(void grpc_init(void))
]

{ #category : #'accessing platform' }
GrpcLibrary >> initializeGrpc [
	[ self grpc_init.
	queue := GrpcCompletionQueue next.
	queue startBackgroundPoll.
	self recordInitializationSuccess ]
		on: Error
		do: [ :ex | 
			self recordInitializationFailure.
			ex pass ]
]

{ #category : #'accessing platform' }
GrpcLibrary >> macModuleName [
	^'/usr/local/lib/libgrpc.dylib'
]

{ #category : #operations }
GrpcLibrary >> recordInitializationFailure [

	initialized := false
]

{ #category : #'accessing platform' }
GrpcLibrary >> recordInitializationSuccess [

	initialized ifNil: [initialized := true]
]

{ #category : #'as yet unclassified' }
GrpcLibrary >> unixModuleName [
	^'/usr/local/lib/libgrpc.so.9.0.0'
]
