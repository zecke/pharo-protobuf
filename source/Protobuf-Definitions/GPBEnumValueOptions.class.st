Class {
	#name : #GPBEnumValueOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 1; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBEnumValueOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GPBEnumValueOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GPBEnumValueOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #'as yet unclassified' }
GPBEnumValueOptions >> initialize [
	super initialize.
	deprecated := false.

]

{ #category : #accessing }
GPBEnumValueOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
