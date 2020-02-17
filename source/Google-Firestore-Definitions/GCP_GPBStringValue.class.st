Class {
	#name : #'GCP_GPBStringValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeString) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBStringValue >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBStringValue >> value: anObject [
	value:= anObject.
]
