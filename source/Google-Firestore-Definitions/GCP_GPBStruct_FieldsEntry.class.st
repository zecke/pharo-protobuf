Class {
	#name : #'GCP_GPBStruct_FieldsEntry',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#key => ((PBPropertySlot with: #PBTypeString) fieldName: \'key\'; fieldNumber: 1; beOptional; jsonFieldName: \'key\')',
		'#value => ((PBPropertySlot with: #GCP_GPBValue) fieldName: \'value\'; fieldNumber: 2; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBStruct_FieldsEntry >> key [
	 ^key
]

{ #category : #accessing }
GCP_GPBStruct_FieldsEntry >> key: anObject [
	key:= anObject.
]

{ #category : #accessing }
GCP_GPBStruct_FieldsEntry >> value [
	 ^value
]

{ #category : #accessing }
GCP_GPBStruct_FieldsEntry >> value: anObject [
	value:= anObject.
]
