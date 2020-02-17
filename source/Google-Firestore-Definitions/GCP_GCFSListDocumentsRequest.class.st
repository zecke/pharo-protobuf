Class {
	#name : #'GCP_GCFSListDocumentsRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#parent => ((PBPropertySlot with: #PBTypeString) fieldName: \'parent\'; fieldNumber: 1; beOptional; jsonFieldName: \'parent\')',
		'#collection_id => ((PBPropertySlot with: #PBTypeString) fieldName: \'collection_id\'; fieldNumber: 2; beOptional; jsonFieldName: \'collectionId\')',
		'#page_size => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'page_size\'; fieldNumber: 3; beOptional; jsonFieldName: \'pageSize\')',
		'#page_token => ((PBPropertySlot with: #PBTypeString) fieldName: \'page_token\'; fieldNumber: 4; beOptional; jsonFieldName: \'pageToken\')',
		'#order_by => ((PBPropertySlot with: #PBTypeString) fieldName: \'order_by\'; fieldNumber: 6; beOptional; jsonFieldName: \'orderBy\')',
		'#mask => ((PBPropertySlot with: #GCP_GCFSDocumentMask) fieldName: \'mask\'; fieldNumber: 7; beOptional; jsonFieldName: \'mask\')',
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 8; beOptional; jsonFieldName: \'transaction\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 10; beOptional; jsonFieldName: \'readTime\')',
		'#show_missing => ((PBPropertySlot with: #PBTypeBool) fieldName: \'show_missing\'; fieldNumber: 12; beOptional; jsonFieldName: \'showMissing\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> collection_id [
	 ^collection_id
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> collection_id: anObject [
	collection_id:= anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> mask [
	 ^mask
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> mask: anObject [
	mask:= anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> order_by [
	 ^order_by
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> order_by: anObject [
	order_by:= anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> page_size [
	 ^page_size
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> page_size: anObject [
	page_size:= anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> page_token [
	 ^page_token
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> page_token: anObject [
	page_token:= anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> parent [
	 ^parent
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> parent: anObject [
	parent:= anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> show_missing [
	 ^show_missing
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> show_missing: anObject [
	show_missing:= anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSListDocumentsRequest >> transaction: anObject [
	transaction:= anObject.
]
