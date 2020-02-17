Class {
	#name : #'GCP_GCFSUpdateDocumentRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#document => ((PBPropertySlot with: #GCP_GCFSDocument) fieldName: \'document\'; fieldNumber: 1; beOptional; jsonFieldName: \'document\')',
		'#update_mask => ((PBPropertySlot with: #GCP_GCFSDocumentMask) fieldName: \'update_mask\'; fieldNumber: 2; beOptional; jsonFieldName: \'updateMask\')',
		'#mask => ((PBPropertySlot with: #GCP_GCFSDocumentMask) fieldName: \'mask\'; fieldNumber: 3; beOptional; jsonFieldName: \'mask\')',
		'#current_document => ((PBPropertySlot with: #GCP_GCFSPrecondition) fieldName: \'current_document\'; fieldNumber: 4; beOptional; jsonFieldName: \'currentDocument\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSUpdateDocumentRequest >> current_document [
	 ^current_document
]

{ #category : #accessing }
GCP_GCFSUpdateDocumentRequest >> current_document: anObject [
	current_document:= anObject.
]

{ #category : #accessing }
GCP_GCFSUpdateDocumentRequest >> document [
	 ^document
]

{ #category : #accessing }
GCP_GCFSUpdateDocumentRequest >> document: anObject [
	document:= anObject.
]

{ #category : #accessing }
GCP_GCFSUpdateDocumentRequest >> mask [
	 ^mask
]

{ #category : #accessing }
GCP_GCFSUpdateDocumentRequest >> mask: anObject [
	mask:= anObject.
]

{ #category : #accessing }
GCP_GCFSUpdateDocumentRequest >> update_mask [
	 ^update_mask
]

{ #category : #accessing }
GCP_GCFSUpdateDocumentRequest >> update_mask: anObject [
	update_mask:= anObject.
]
