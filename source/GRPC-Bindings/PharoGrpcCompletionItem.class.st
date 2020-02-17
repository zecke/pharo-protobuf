Class {
	#name : #PharoGrpcCompletionItem,
	#superclass : #PharoGrpcCompletionBase,
	#instVars : [
		'semaphore'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #initialization }
PharoGrpcCompletionItem >> initialize [
	super initialize.
	semaphore := Semaphore new.
]

{ #category : #initialization }
PharoGrpcCompletionItem >> signalCompletion [
	semaphore signal.
]

{ #category : #initialization }
PharoGrpcCompletionItem >> waitForCompletion [
	semaphore wait.
]
