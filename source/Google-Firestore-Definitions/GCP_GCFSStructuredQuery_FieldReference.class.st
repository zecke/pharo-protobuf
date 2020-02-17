Class {
	#name : #'GCP_GCFSStructuredQuery_FieldReference',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#field_path => ((PBPropertySlot with: #PBTypeString) fieldName: \'field_path\'; fieldNumber: 2; beOptional; jsonFieldName: \'fieldPath\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery_FieldReference >> field_path [
	 ^field_path
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_FieldReference >> field_path: anObject [
	field_path:= anObject.
]
