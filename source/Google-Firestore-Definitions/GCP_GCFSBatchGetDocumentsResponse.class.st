Class {
	#name : #'GCP_GCFSBatchGetDocumentsResponse',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#found => ((PBPropertySlot with: #GCP_GCFSDocument) fieldName: \'found\'; fieldNumber: 1; beOptional; jsonFieldName: \'found\')',
		'#missing => ((PBPropertySlot with: #PBTypeString) fieldName: \'missing\'; fieldNumber: 2; beOptional; jsonFieldName: \'missing\')',
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 3; beOptional; jsonFieldName: \'transaction\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 4; beOptional; jsonFieldName: \'readTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsResponse >> found [
	 ^found
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsResponse >> found: anObject [
	found:= anObject.
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsResponse >> missing [
	 ^missing
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsResponse >> missing: anObject [
	missing:= anObject.
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsResponse >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsResponse >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsResponse >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSBatchGetDocumentsResponse >> transaction: anObject [
	transaction:= anObject.
]
