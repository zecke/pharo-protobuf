Class {
	#name : #'GCP_GCFSCommitRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#database => ((PBPropertySlot with: #PBTypeString) fieldName: \'database\'; fieldNumber: 1; beOptional; jsonFieldName: \'database\')',
		'#writes => ((PBPropertySlot with: #GCP_GCFSWrite) fieldName: \'writes\'; fieldNumber: 2; beRepeated; jsonFieldName: \'writes\')',
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 3; beOptional; jsonFieldName: \'transaction\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSCommitRequest >> add_writes: anObject [
	self writess add: anObject.
]

{ #category : #accessing }
GCP_GCFSCommitRequest >> database [
	 ^database
]

{ #category : #accessing }
GCP_GCFSCommitRequest >> database: anObject [
	database:= anObject.
]

{ #category : #accessing }
GCP_GCFSCommitRequest >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSCommitRequest >> transaction: anObject [
	transaction:= anObject.
]

{ #category : #accessing }
GCP_GCFSCommitRequest >> writess [
	 ^writes ifNil: [ writes := OrderedCollection new ]
]
