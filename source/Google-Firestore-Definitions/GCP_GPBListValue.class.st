Class {
	#name : #'GCP_GPBListValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#values => ((PBPropertySlot with: #GCP_GPBValue) fieldName: \'values\'; fieldNumber: 1; beRepeated; jsonFieldName: \'values\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBListValue >> add_values: anObject [
	self valuess add: anObject.
]

{ #category : #accessing }
GCP_GPBListValue >> valuess [
	 ^values ifNil: [ values := OrderedCollection new ]
]
