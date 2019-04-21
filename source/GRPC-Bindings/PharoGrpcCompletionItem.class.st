Class {
	#name : #PharoGrpcCompletionItem,
	#superclass : #Object,
	#instVars : [
		'semaphore',
		'tag',
		'result'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
PharoGrpcCompletionItem >> handle [
	^tag
]

{ #category : #initialization }
PharoGrpcCompletionItem >> initialize [
	super initialize.
	semaphore := Semaphore new.
]

{ #category : #'as yet unclassified' }
PharoGrpcCompletionItem >> result [
	^ result
]

{ #category : #initialization }
PharoGrpcCompletionItem >> result: aResult [
	result := aResult
]

{ #category : #initialization }
PharoGrpcCompletionItem >> signalCompletion [
	semaphore signal.
]

{ #category : #initialization }
PharoGrpcCompletionItem >> tag: aTagAddress [
	tag := aTagAddress
]

{ #category : #initialization }
PharoGrpcCompletionItem >> waitForCompletion [
	semaphore wait.
]
