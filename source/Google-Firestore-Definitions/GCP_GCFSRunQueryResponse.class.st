Class {
	#name : #'GCP_GCFSRunQueryResponse',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#document => ((PBPropertySlot with: #GCP_GCFSDocument) fieldName: \'document\'; fieldNumber: 1; beOptional; jsonFieldName: \'document\')',
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 2; beOptional; jsonFieldName: \'transaction\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 3; beOptional; jsonFieldName: \'readTime\')',
		'#skipped_results => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'skipped_results\'; fieldNumber: 4; beOptional; jsonFieldName: \'skippedResults\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSRunQueryResponse >> document [
	 ^document
]

{ #category : #accessing }
GCP_GCFSRunQueryResponse >> document: anObject [
	document:= anObject.
]

{ #category : #accessing }
GCP_GCFSRunQueryResponse >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSRunQueryResponse >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSRunQueryResponse >> skipped_results [
	 ^skipped_results
]

{ #category : #accessing }
GCP_GCFSRunQueryResponse >> skipped_results: anObject [
	skipped_results:= anObject.
]

{ #category : #accessing }
GCP_GCFSRunQueryResponse >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSRunQueryResponse >> transaction: anObject [
	transaction:= anObject.
]
