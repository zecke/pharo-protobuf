Class {
	#name : #GPBMethodOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 33; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#idempotency_level => ((PBPropertySlot with: #GPBMethodOptions_IdempotencyLevel) fieldName: \'idempotency_level\'; fieldNumber: 34; beOptional; defaultValue: \'IDEMPOTENCY_UNKNOWN\'; jsonFieldName: \'idempotencyLevel\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBMethodOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GPBMethodOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GPBMethodOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #accessing }
GPBMethodOptions >> idempotency_level [
	 ^idempotency_level ifNil: [0" IDEMPOTENCY_UNKNOWN "]
]

{ #category : #accessing }
GPBMethodOptions >> idempotency_level: anObject [
	idempotency_level:= anObject.
]

{ #category : #'as yet unclassified' }
GPBMethodOptions >> initialize [
	super initialize.
	deprecated := false.
	idempotency_level := 0" IDEMPOTENCY_UNKNOWN ".

]

{ #category : #accessing }
GPBMethodOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
