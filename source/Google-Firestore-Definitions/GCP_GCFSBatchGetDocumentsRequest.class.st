Class {
	#name : #'GCP_GCFSBatchGetDocumentsRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#database => ((PBPropertySlot with: #PBTypeString) fieldName: \'database\'; fieldNumber: 1; beOptional; jsonFieldName: \'database\')',
		'#documents => ((PBPropertySlot with: #PBTypeString) fieldName: \'documents\'; fieldNumber: 2; beRepeated; jsonFieldName: \'documents\')',
		'#mask => ((PBPropertySlot with: #GCP_GCFSDocumentMask) fieldName: \'mask\'; fieldNumber: 3; beOptional; jsonFieldName: \'mask\')',
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 4; beOptional; jsonFieldName: \'transaction\')',
		'#new_transaction => ((PBPropertySlot with: #GCP_GCFSTransactionOptions) fieldName: \'new_transaction\'; fieldNumber: 5; beOptional; jsonFieldName: \'newTransaction\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 7; beOptional; jsonFieldName: \'readTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> add_documents: anObject [
	self documentss add: anObject.
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> database [
	 ^database
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> database: anObject [
	database:= anObject.
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> documentss [
	 ^documents ifNil: [ documents := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> mask [
	 ^mask
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> mask: anObject [
	mask:= anObject.
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> new_transaction [
	 ^new_transaction
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> new_transaction: anObject [
	new_transaction:= anObject.
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsRequest >> transaction: anObject [
	transaction:= anObject.
]
