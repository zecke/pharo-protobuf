Class {
	#name : #'GCP_GPBFloatValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeFloat) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBFloatValue >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBFloatValue >> value: anObject [
	value:= anObject.
]
