Class {
	#name : #'GCP_GPBStruct',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#fields => ((PBPropertySlot with: #GCP_GPBStruct_FieldsEntry) fieldName: \'fields\'; fieldNumber: 1; beRepeated; jsonFieldName: \'fields\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBStruct >> add_fields: anObject [
	self fieldss add: anObject.
]

{ #category : #accessing }
GCP_GPBStruct >> fieldss [
	 ^fields ifNil: [ fields := OrderedCollection new ]
]
