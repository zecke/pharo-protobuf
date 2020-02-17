Class {
	#name : #'GCP_GCFSListenResponse',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#target_change => ((PBPropertySlot with: #GCP_GCFSTargetChange) fieldName: \'target_change\'; fieldNumber: 2; beOptional; jsonFieldName: \'targetChange\')',
		'#document_change => ((PBPropertySlot with: #GCP_GCFSDocumentChange) fieldName: \'document_change\'; fieldNumber: 3; beOptional; jsonFieldName: \'documentChange\')',
		'#document_delete => ((PBPropertySlot with: #GCP_GCFSDocumentDelete) fieldName: \'document_delete\'; fieldNumber: 4; beOptional; jsonFieldName: \'documentDelete\')',
		'#filter => ((PBPropertySlot with: #GCP_GCFSExistenceFilter) fieldName: \'filter\'; fieldNumber: 5; beOptional; jsonFieldName: \'filter\')',
		'#document_remove => ((PBPropertySlot with: #GCP_GCFSDocumentRemove) fieldName: \'document_remove\'; fieldNumber: 6; beOptional; jsonFieldName: \'documentRemove\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSListenResponse >> document_change [
	 ^document_change
]

{ #category : #accessing }
GCP_GCFSListenResponse >> document_change: anObject [
	document_change:= anObject.
]

{ #category : #accessing }
GCP_GCFSListenResponse >> document_delete [
	 ^document_delete
]

{ #category : #accessing }
GCP_GCFSListenResponse >> document_delete: anObject [
	document_delete:= anObject.
]

{ #category : #accessing }
GCP_GCFSListenResponse >> document_remove [
	 ^document_remove
]

{ #category : #accessing }
GCP_GCFSListenResponse >> document_remove: anObject [
	document_remove:= anObject.
]

{ #category : #accessing }
GCP_GCFSListenResponse >> filter [
	 ^filter
]

{ #category : #accessing }
GCP_GCFSListenResponse >> filter: anObject [
	filter:= anObject.
]

{ #category : #accessing }
GCP_GCFSListenResponse >> target_change [
	 ^target_change
]

{ #category : #accessing }
GCP_GCFSListenResponse >> target_change: anObject [
	target_change:= anObject.
]
