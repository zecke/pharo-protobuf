Class {
	#name : #'GCP_GPBInt32Value',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBInt32Value >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBInt32Value >> value: anObject [
	value:= anObject.
]
