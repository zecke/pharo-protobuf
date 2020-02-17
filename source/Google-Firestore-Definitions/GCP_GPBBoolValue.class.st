Class {
	#name : #'GCP_GPBBoolValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeBool) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBBoolValue >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBBoolValue >> value: anObject [
	value:= anObject.
]
