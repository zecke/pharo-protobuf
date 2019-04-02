Class {
	#name : #GPBEnumOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#allow_alias => ((PBPropertySlot with: #PBTypeBool) fieldName: \'allow_alias\'; fieldNumber: 2; beOptional; jsonFieldName: \'allowAlias\')',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBEnumOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GPBEnumOptions >> allow_alias [
	 ^allow_alias
]

{ #category : #accessing }
GPBEnumOptions >> allow_alias: anObject [
	allow_alias:= anObject.
]

{ #category : #accessing }
GPBEnumOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GPBEnumOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #'as yet unclassified' }
GPBEnumOptions >> initialize [
	super initialize.
	deprecated := false.

]

{ #category : #accessing }
GPBEnumOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
