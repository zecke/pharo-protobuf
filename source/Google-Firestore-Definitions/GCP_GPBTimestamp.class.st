Class {
	#name : #'GCP_GPBTimestamp',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#seconds => ((PBPropertySlot with: #PBTypeInt64) fieldName: \'seconds\'; fieldNumber: 1; beOptional; jsonFieldName: \'seconds\')',
		'#nanos => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'nanos\'; fieldNumber: 2; beOptional; jsonFieldName: \'nanos\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBTimestamp >> nanos [
	 ^nanos
]

{ #category : #accessing }
GCP_GPBTimestamp >> nanos: anObject [
	nanos:= anObject.
]

{ #category : #accessing }
GCP_GPBTimestamp >> seconds [
	 ^seconds
]

{ #category : #accessing }
GCP_GPBTimestamp >> seconds: anObject [
	seconds:= anObject.
]
