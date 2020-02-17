Class {
	#name : #'GCP_GTPLatLng',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#latitude => ((PBPropertySlot with: #PBTypeDouble) fieldName: \'latitude\'; fieldNumber: 1; beOptional; jsonFieldName: \'latitude\')',
		'#longitude => ((PBPropertySlot with: #PBTypeDouble) fieldName: \'longitude\'; fieldNumber: 2; beOptional; jsonFieldName: \'longitude\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GTPLatLng >> latitude [
	 ^latitude
]

{ #category : #accessing }
GCP_GTPLatLng >> latitude: anObject [
	latitude:= anObject.
]

{ #category : #accessing }
GCP_GTPLatLng >> longitude [
	 ^longitude
]

{ #category : #accessing }
GCP_GTPLatLng >> longitude: anObject [
	longitude:= anObject.
]
