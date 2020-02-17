Class {
	#name : #'GCP_GCFSRunQueryRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#parent => ((PBPropertySlot with: #PBTypeString) fieldName: \'parent\'; fieldNumber: 1; beOptional; jsonFieldName: \'parent\')',
		'#structured_query => ((PBPropertySlot with: #GCP_GCFSStructuredQuery) fieldName: \'structured_query\'; fieldNumber: 2; beOptional; jsonFieldName: \'structuredQuery\')',
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 5; beOptional; jsonFieldName: \'transaction\')',
		'#new_transaction => ((PBPropertySlot with: #GCP_GCFSTransactionOptions) fieldName: \'new_transaction\'; fieldNumber: 6; beOptional; jsonFieldName: \'newTransaction\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 7; beOptional; jsonFieldName: \'readTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> new_transaction [
	 ^new_transaction
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> new_transaction: anObject [
	new_transaction:= anObject.
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> parent [
	 ^parent
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> parent: anObject [
	parent:= anObject.
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> structured_query [
	 ^structured_query
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> structured_query: anObject [
	structured_query:= anObject.
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSRunQueryRequest >> transaction: anObject [
	transaction:= anObject.
]
