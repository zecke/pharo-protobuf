Class {
	#name : #GPBServiceOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 33; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBServiceOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GPBServiceOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GPBServiceOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #'as yet unclassified' }
GPBServiceOptions >> initialize [
	super initialize.
	deprecated := false.

]

{ #category : #accessing }
GPBServiceOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
