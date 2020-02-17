Class {
	#name : #'GCP_GCFSCreateDocumentRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#parent => ((PBPropertySlot with: #PBTypeString) fieldName: \'parent\'; fieldNumber: 1; beOptional; jsonFieldName: \'parent\')',
		'#collection_id => ((PBPropertySlot with: #PBTypeString) fieldName: \'collection_id\'; fieldNumber: 2; beOptional; jsonFieldName: \'collectionId\')',
		'#document_id => ((PBPropertySlot with: #PBTypeString) fieldName: \'document_id\'; fieldNumber: 3; beOptional; jsonFieldName: \'documentId\')',
		'#document => ((PBPropertySlot with: #GCP_GCFSDocument) fieldName: \'document\'; fieldNumber: 4; beOptional; jsonFieldName: \'document\')',
		'#mask => ((PBPropertySlot with: #GCP_GCFSDocumentMask) fieldName: \'mask\'; fieldNumber: 5; beOptional; jsonFieldName: \'mask\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> collection_id [
	 ^collection_id
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> collection_id: anObject [
	collection_id:= anObject.
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> document [
	 ^document
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> document: anObject [
	document:= anObject.
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> document_id [
	 ^document_id
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> document_id: anObject [
	document_id:= anObject.
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> mask [
	 ^mask
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> mask: anObject [
	mask:= anObject.
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> parent [
	 ^parent
]

{ #category : #accessing }
GCP_GCFSCreateDocumentRequest >> parent: anObject [
	parent:= anObject.
]
