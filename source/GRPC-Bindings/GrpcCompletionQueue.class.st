Class {
	#name : #GrpcCompletionQueue,
	#superclass : #FFIOpaqueObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#instVars : [
		'pending',
		'mutex',
		'pollProc',
		'quit'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
GrpcCompletionQueue class >> ffiLibraryName [
	^self ffiLibrary 
]

{ #category : #accessing }
GrpcCompletionQueue class >> next [
	^self primNext
		initializeDefault;
		yourself
]

{ #category : #accessing }
GrpcCompletionQueue class >> primNext [
	^self ffiCall: 'GrpcCompletionQueue* grpc_completion_queue_create_for_next(nil)'

]

{ #category : #'queue-management' }
GrpcCompletionQueue >> createNewEntry [
	^PharoGrpcCompletionItem new
]

{ #category : #deleting }
GrpcCompletionQueue >> destroy [
	self ffiCall: 'void grpc_completion_queue_destroy(self)'
]

{ #category : #'initialize-release' }
GrpcCompletionQueue >> free [
	"Free the handle pointed to by the receiver"
	handle := nil.
]

{ #category : #initialization }
GrpcCompletionQueue >> initializeDefault [
	pending := OrderedCollection new.
	mutex := Semaphore forMutualExclusion.
]

{ #category : #accessing }
GrpcCompletionQueue >> next: aTimeSpec [
	^self ffiCall: 'GrpcEvent grpc_completion_queue_next(self, GprTimespec aTimeSpec, nil)'
]

{ #category : #'queue-management' }
GrpcCompletionQueue >> nextTag [
	"Finds the first free slot or makes more space and returns a queue entry that
	will have a semaphore."
	"TODO(zecke): If this becomes a bottleneck we can maintain a freelist"
	mutex critical: [
		| newEntry |
		newEntry := self createNewEntry.
		pending doWithIndex: [:each :i |
			each ifNil: [
				^pending at: i put: (newEntry tag: (ExternalAddress fromAddress: i); yourself).
			]].
	
		"TODO(holgerf): Optimize this later but be correct first."
		pending addLast: newEntry.
		newEntry tag: (ExternalAddress fromAddress: (pending identityIndexOf: newEntry)).
		^newEntry
	].
]

{ #category : #initialization }
GrpcCompletionQueue >> operationComplete: aResult [
	| entry |
	mutex critical: [
		"Fetch the entry at the point. We assume it exists."
		entry := pending at: aResult tag asInteger.
		pending at: aResult tag asInteger put: nil.
	].
	entry
		result: aResult;
		signalCompletion.
]

{ #category : #initialization }
GrpcCompletionQueue >> pollOnce [
	"Gets the next entry out of the queue and returns true if one was popped."
	| result |
	
	"Safety measure on resume of the image."
	self getHandle ifNil: [ ^false ].

	result := self next: (GprTimespec zero: GprClockType GPR_TIMESPAN).
	result type = GrpcCompletionType GRPC_QUEUE_TIMEOUT ifTrue: [ ^false ].
	result type = GrpcCompletionType GRPC_QUEUE_SHUTDOWN ifTrue: [ self queueShutdown: result. false ].
	result type = GrpcCompletionType GRPC_OP_COMPLETE ifTrue: [ self operationComplete: result. true ].
	^self error: 'Unknown event type returned'
]

{ #category : #accessing }
GrpcCompletionQueue >> quit [
	quit := true.
]

{ #category : #'library path' }
GrpcCompletionQueue >> releaseData [
	self shutdown.
	self destroy.
	self free.
]

{ #category : #'as yet unclassified' }
GrpcCompletionQueue >> runPoll [
	[self pollOnce] whileTrue: [ ].
	(Delay forMilliseconds: 10) wait.
]

{ #category : #deleting }
GrpcCompletionQueue >> shutdown [
	self ffiCall: 'void grpc_completion_queue_shutdown(self)'
]

{ #category : #'as yet unclassified' }
GrpcCompletionQueue >> startBackgroundPoll [
	quit := false.
	pollProc := [
		[ quit ] whileFalse: [
			self runPoll.
		].
	] forkNamed: 'GRPC completion queue.'
]
