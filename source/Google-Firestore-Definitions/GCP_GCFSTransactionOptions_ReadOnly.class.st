Class {
	#name : #'GCP_GCFSTransactionOptions_ReadOnly',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 2; beOptional; jsonFieldName: \'readTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSTransactionOptions_ReadOnly >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSTransactionOptions_ReadOnly >> read_time: anObject [
	read_time:= anObject.
]
