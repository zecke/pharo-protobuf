Class {
	#name : #'GCP_GAPICustomHttpPattern',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#kind => ((PBPropertySlot with: #PBTypeString) fieldName: \'kind\'; fieldNumber: 1; beOptional; jsonFieldName: \'kind\')',
		'#path => ((PBPropertySlot with: #PBTypeString) fieldName: \'path\'; fieldNumber: 2; beOptional; jsonFieldName: \'path\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GAPICustomHttpPattern >> kind [
	 ^kind
]

{ #category : #accessing }
GCP_GAPICustomHttpPattern >> kind: anObject [
	kind:= anObject.
]

{ #category : #accessing }
GCP_GAPICustomHttpPattern >> path [
	 ^path
]

{ #category : #accessing }
GCP_GAPICustomHttpPattern >> path: anObject [
	path:= anObject.
]
