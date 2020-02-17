Class {
	#name : #'GCP_GCFSMapValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#fields => ((PBPropertySlot with: #GCP_GCFSMapValue_FieldsEntry) fieldName: \'fields\'; fieldNumber: 1; beRepeated; jsonFieldName: \'fields\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSMapValue >> add_fields: anObject [
	self fieldss add: anObject.
]

{ #category : #accessing }
GCP_GCFSMapValue >> fieldss [
	 ^fields ifNil: [ fields := OrderedCollection new ]
]
