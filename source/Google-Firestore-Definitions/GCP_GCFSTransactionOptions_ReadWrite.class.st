Class {
	#name : #'GCP_GCFSTransactionOptions_ReadWrite',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#retry_transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'retry_transaction\'; fieldNumber: 1; beOptional; jsonFieldName: \'retryTransaction\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSTransactionOptions_ReadWrite >> retry_transaction [
	 ^retry_transaction
]

{ #category : #accessing }
GCP_GCFSTransactionOptions_ReadWrite >> retry_transaction: anObject [
	retry_transaction:= anObject.
]
