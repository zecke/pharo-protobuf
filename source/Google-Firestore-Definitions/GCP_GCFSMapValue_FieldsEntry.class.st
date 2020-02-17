Class {
	#name : #'GCP_GCFSMapValue_FieldsEntry',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#key => ((PBPropertySlot with: #PBTypeString) fieldName: \'key\'; fieldNumber: 1; beOptional; jsonFieldName: \'key\')',
		'#value => ((PBPropertySlot with: #GCP_GCFSValue) fieldName: \'value\'; fieldNumber: 2; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSMapValue_FieldsEntry >> key [
	 ^key
]

{ #category : #accessing }
GCP_GCFSMapValue_FieldsEntry >> key: anObject [
	key:= anObject.
]

{ #category : #accessing }
GCP_GCFSMapValue_FieldsEntry >> value [
	 ^value
]

{ #category : #accessing }
GCP_GCFSMapValue_FieldsEntry >> value: anObject [
	value:= anObject.
]
