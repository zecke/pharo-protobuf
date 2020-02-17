Class {
	#name : #'GCP_GCFSBeginTransactionRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#database => ((PBPropertySlot with: #PBTypeString) fieldName: \'database\'; fieldNumber: 1; beOptional; jsonFieldName: \'database\')',
		'#options => ((PBPropertySlot with: #GCP_GCFSTransactionOptions) fieldName: \'options\'; fieldNumber: 2; beOptional; jsonFieldName: \'options\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSBeginTransactionRequest >> database [
	 ^database
]

{ #category : #accessing }
GCP_GCFSBeginTransactionRequest >> database: anObject [
	database:= anObject.
]

{ #category : #accessing }
GCP_GCFSBeginTransactionRequest >> options [
	 ^options
]

{ #category : #accessing }
GCP_GCFSBeginTransactionRequest >> options: anObject [
	options:= anObject.
]
