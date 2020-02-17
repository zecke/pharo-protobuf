Class {
	#name : #'GCP_GCFSWrite',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#update => ((PBPropertySlot with: #GCP_GCFSDocument) fieldName: \'update\'; fieldNumber: 1; beOptional; jsonFieldName: \'update\')',
		'#delete => ((PBPropertySlot with: #PBTypeString) fieldName: \'delete\'; fieldNumber: 2; beOptional; jsonFieldName: \'delete\')',
		'#update_mask => ((PBPropertySlot with: #GCP_GCFSDocumentMask) fieldName: \'update_mask\'; fieldNumber: 3; beOptional; jsonFieldName: \'updateMask\')',
		'#current_document => ((PBPropertySlot with: #GCP_GCFSPrecondition) fieldName: \'current_document\'; fieldNumber: 4; beOptional; jsonFieldName: \'currentDocument\')',
		'#transform => ((PBPropertySlot with: #GCP_GCFSDocumentTransform) fieldName: \'transform\'; fieldNumber: 6; beOptional; jsonFieldName: \'transform\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSWrite >> current_document [
	 ^current_document
]

{ #category : #accessing }
GCP_GCFSWrite >> current_document: anObject [
	current_document:= anObject.
]

{ #category : #accessing }
GCP_GCFSWrite >> delete [
	 ^delete
]

{ #category : #accessing }
GCP_GCFSWrite >> delete: anObject [
	delete:= anObject.
]

{ #category : #accessing }
GCP_GCFSWrite >> transform [
	 ^transform
]

{ #category : #accessing }
GCP_GCFSWrite >> transform: anObject [
	transform:= anObject.
]

{ #category : #accessing }
GCP_GCFSWrite >> update [
	 ^update
]

{ #category : #accessing }
GCP_GCFSWrite >> update: anObject [
	update:= anObject.
]

{ #category : #accessing }
GCP_GCFSWrite >> update_mask [
	 ^update_mask
]

{ #category : #accessing }
GCP_GCFSWrite >> update_mask: anObject [
	update_mask:= anObject.
]
