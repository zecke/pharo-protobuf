Class {
	#name : #'GCP_GCFSBeginTransactionResponse',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 1; beOptional; jsonFieldName: \'transaction\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSBeginTransactionResponse >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSBeginTransactionResponse >> transaction: anObject [
	transaction:= anObject.
]
