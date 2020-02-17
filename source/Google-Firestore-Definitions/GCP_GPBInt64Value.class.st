Class {
	#name : #'GCP_GPBInt64Value',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeInt64) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBInt64Value >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBInt64Value >> value: anObject [
	value:= anObject.
]
