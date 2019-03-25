Class {
	#name : #'GPBMethodOptions_IdempotencyLevel',
	#superclass : #PBTypeEnum,
	#classVars : [
		'IDEMPOTENCY_UNKNOWN',
		'IDEMPOTENT',
		'NO_SIDE_EFFECTS'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #'as yet unclassified' }
GPBMethodOptions_IdempotencyLevel class >> IDEMPOTENCY_UNKNOWN [
	^ IDEMPOTENCY_UNKNOWN
]

{ #category : #'as yet unclassified' }
GPBMethodOptions_IdempotencyLevel class >> IDEMPOTENT [
	^ IDEMPOTENT
]

{ #category : #'as yet unclassified' }
GPBMethodOptions_IdempotencyLevel class >> NO_SIDE_EFFECTS [
	^ NO_SIDE_EFFECTS
]

{ #category : #'as yet unclassified' }
GPBMethodOptions_IdempotencyLevel class >> initialize [
IDEMPOTENCY_UNKNOWN := 0.
NO_SIDE_EFFECTS := 1.
IDEMPOTENT := 2.

]
