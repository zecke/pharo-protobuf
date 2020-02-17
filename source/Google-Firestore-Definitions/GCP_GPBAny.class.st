Class {
	#name : #'GCP_GPBAny',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#type_url => ((PBPropertySlot with: #PBTypeString) fieldName: \'type_url\'; fieldNumber: 1; beOptional; jsonFieldName: \'typeUrl\')',
		'#value => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'value\'; fieldNumber: 2; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBAny >> type_url [
	 ^type_url
]

{ #category : #accessing }
GCP_GPBAny >> type_url: anObject [
	type_url:= anObject.
]

{ #category : #accessing }
GCP_GPBAny >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBAny >> value: anObject [
	value:= anObject.
]
