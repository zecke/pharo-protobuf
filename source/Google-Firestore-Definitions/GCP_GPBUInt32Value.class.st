Class {
	#name : #'GCP_GPBUInt32Value',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeUint32) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBUInt32Value >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBUInt32Value >> value: anObject [
	value:= anObject.
]
