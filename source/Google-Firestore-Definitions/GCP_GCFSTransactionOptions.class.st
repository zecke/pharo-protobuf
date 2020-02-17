Class {
	#name : #'GCP_GCFSTransactionOptions',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#read_only => ((PBPropertySlot with: #GCP_GCFSTransactionOptions_ReadOnly) fieldName: \'read_only\'; fieldNumber: 2; beOptional; jsonFieldName: \'readOnly\')',
		'#read_write => ((PBPropertySlot with: #GCP_GCFSTransactionOptions_ReadWrite) fieldName: \'read_write\'; fieldNumber: 3; beOptional; jsonFieldName: \'readWrite\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSTransactionOptions >> read_only [
	 ^read_only
]

{ #category : #accessing }
GCP_GCFSTransactionOptions >> read_only: anObject [
	read_only:= anObject.
]

{ #category : #accessing }
GCP_GCFSTransactionOptions >> read_write [
	 ^read_write
]

{ #category : #accessing }
GCP_GCFSTransactionOptions >> read_write: anObject [
	read_write:= anObject.
]
