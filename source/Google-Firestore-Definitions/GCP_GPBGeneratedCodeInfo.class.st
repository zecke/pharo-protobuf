Class {
	#name : #'GCP_GPBGeneratedCodeInfo',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#annotation => ((PBPropertySlot with: #GCP_GPBGeneratedCodeInfo_Annotation) fieldName: \'annotation\'; fieldNumber: 1; beRepeated; jsonFieldName: \'annotation\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo >> add_annotation: anObject [
	self annotations add: anObject.
]

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo >> annotations [
	 ^annotation ifNil: [ annotation := OrderedCollection new ]
]
