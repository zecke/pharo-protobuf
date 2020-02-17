Class {
	#name : #'GCP_GPBOneofOptions',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#uninterpreted_option => ((PBPropertySlot with: #GCP_GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBOneofOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GCP_GPBOneofOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
