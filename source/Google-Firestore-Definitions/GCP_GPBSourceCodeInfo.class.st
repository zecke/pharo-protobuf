Class {
	#name : #'GCP_GPBSourceCodeInfo',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#location => ((PBPropertySlot with: #GCP_GPBSourceCodeInfo_Location) fieldName: \'location\'; fieldNumber: 1; beRepeated; jsonFieldName: \'location\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBSourceCodeInfo >> add_location: anObject [
	self locations add: anObject.
]

{ #category : #accessing }
GCP_GPBSourceCodeInfo >> locations [
	 ^location ifNil: [ location := OrderedCollection new ]
]
