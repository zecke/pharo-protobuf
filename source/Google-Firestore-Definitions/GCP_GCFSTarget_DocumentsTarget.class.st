Class {
	#name : #'GCP_GCFSTarget_DocumentsTarget',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#documents => ((PBPropertySlot with: #PBTypeString) fieldName: \'documents\'; fieldNumber: 2; beRepeated; jsonFieldName: \'documents\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSTarget_DocumentsTarget >> add_documents: anObject [
	self documentss add: anObject.
]

{ #category : #accessing }
GCP_GCFSTarget_DocumentsTarget >> documentss [
	 ^documents ifNil: [ documents := OrderedCollection new ]
]
