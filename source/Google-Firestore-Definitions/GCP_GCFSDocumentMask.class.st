Class {
	#name : #'GCP_GCFSDocumentMask',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#field_paths => ((PBPropertySlot with: #PBTypeString) fieldName: \'field_paths\'; fieldNumber: 1; beRepeated; jsonFieldName: \'fieldPaths\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSDocumentMask >> add_field_paths: anObject [
	self field_pathss add: anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentMask >> field_pathss [
	 ^field_paths ifNil: [ field_paths := OrderedCollection new ]
]
