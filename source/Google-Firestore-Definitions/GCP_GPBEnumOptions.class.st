Class {
	#name : #'GCP_GPBEnumOptions',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#allow_alias => ((PBPropertySlot with: #PBTypeBool) fieldName: \'allow_alias\'; fieldNumber: 2; beOptional; jsonFieldName: \'allowAlias\')',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GCP_GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBEnumOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GCP_GPBEnumOptions >> allow_alias [
	 ^allow_alias
]

{ #category : #accessing }
GCP_GPBEnumOptions >> allow_alias: anObject [
	allow_alias:= anObject.
]

{ #category : #accessing }
GCP_GPBEnumOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GCP_GPBEnumOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #'as yet unclassified' }
GCP_GPBEnumOptions >> initialize [
	super initialize.
	deprecated := false.

]

{ #category : #accessing }
GCP_GPBEnumOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
