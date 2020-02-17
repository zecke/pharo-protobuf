Class {
	#name : #PharoGrpcCompletionCallback,
	#superclass : #PharoGrpcCompletionBase,
	#instVars : [
		'completionBlock'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
PharoGrpcCompletionCallback >> onCompletion: aBlock [
	completionBlock := aBlock
]

{ #category : #signalling }
PharoGrpcCompletionCallback >> signalCompletion [
	"Execute from the same context but don't propagate errors."
	completionBlock on: UnhandledError do: [:ex | ].
]
