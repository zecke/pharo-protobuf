"
Internal class to wait for the completion of an item from the completion queue. The implementations are either async or invoke a callback directly.
"
Class {
	#name : #PharoGrpcCompletionBase,
	#superclass : #Object,
	#instVars : [
		'tag',
		'result'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
PharoGrpcCompletionBase >> handle [
	^tag
]

{ #category : #'as yet unclassified' }
PharoGrpcCompletionBase >> result [
	^ result
]

{ #category : #initialization }
PharoGrpcCompletionBase >> result: aResult [
	result := aResult
]

{ #category : #'as yet unclassified' }
PharoGrpcCompletionBase >> signalCompletion [
	self subclassResponsibility
]

{ #category : #initialization }
PharoGrpcCompletionBase >> tag: aTagAddress [
	tag := aTagAddress
]
