Class {
	#name : #'GCP_GPBDoubleValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeDouble) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBDoubleValue >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBDoubleValue >> value: anObject [
	value:= anObject.
]
