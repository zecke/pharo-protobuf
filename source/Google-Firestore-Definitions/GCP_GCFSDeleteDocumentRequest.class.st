Class {
	#name : #'GCP_GCFSDeleteDocumentRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#current_document => ((PBPropertySlot with: #GCP_GCFSPrecondition) fieldName: \'current_document\'; fieldNumber: 2; beOptional; jsonFieldName: \'currentDocument\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSDeleteDocumentRequest >> current_document [
	 ^current_document
]

{ #category : #accessing }
GCP_GCFSDeleteDocumentRequest >> current_document: anObject [
	current_document:= anObject.
]

{ #category : #accessing }
GCP_GCFSDeleteDocumentRequest >> name [
	 ^name
]

{ #category : #accessing }
GCP_GCFSDeleteDocumentRequest >> name: anObject [
	name:= anObject.
]
