Class {
	#name : #'GCP_GCFSRollbackRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#database => ((PBPropertySlot with: #PBTypeString) fieldName: \'database\'; fieldNumber: 1; beOptional; jsonFieldName: \'database\')',
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 2; beOptional; jsonFieldName: \'transaction\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSRollbackRequest >> database [
	 ^database
]

{ #category : #accessing }
GCP_GCFSRollbackRequest >> database: anObject [
	database:= anObject.
]

{ #category : #accessing }
GCP_GCFSRollbackRequest >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSRollbackRequest >> transaction: anObject [
	transaction:= anObject.
]
