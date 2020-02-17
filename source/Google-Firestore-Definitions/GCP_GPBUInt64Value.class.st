Class {
	#name : #'GCP_GPBUInt64Value',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#value => ((PBPropertySlot with: #PBTypeUint64) fieldName: \'value\'; fieldNumber: 1; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBUInt64Value >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBUInt64Value >> value: anObject [
	value:= anObject.
]
