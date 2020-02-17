Class {
	#name : #'GCP_GPBBytesValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBBytesValue >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBBytesValue >> value: anObject [
	value:= anObject.
]
