Class {
	#name : #'GCP_GCFSStructuredQuery_Projection',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#fields => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_FieldReference) fieldName: \'fields\'; fieldNumber: 2; beRepeated; jsonFieldName: \'fields\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery_Projection >> add_fields: anObject [
	self fieldss add: anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Projection >> fieldss [
	 ^fields ifNil: [ fields := OrderedCollection new ]
]
