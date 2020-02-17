Class {
	#name : #'GCP_GCFSWriteRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#database => ((PBPropertySlot with: #PBTypeString) fieldName: \'database\'; fieldNumber: 1; beOptional; jsonFieldName: \'database\')',
		'#stream_id => ((PBPropertySlot with: #PBTypeString) fieldName: \'stream_id\'; fieldNumber: 2; beOptional; jsonFieldName: \'streamId\')',
		'#writes => ((PBPropertySlot with: #GCP_GCFSWrite) fieldName: \'writes\'; fieldNumber: 3; beRepeated; jsonFieldName: \'writes\')',
		'#stream_token => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'stream_token\'; fieldNumber: 4; beOptional; jsonFieldName: \'streamToken\')',
		'#labels => ((PBPropertySlot with: #GCP_GCFSWriteRequest_LabelsEntry) fieldName: \'labels\'; fieldNumber: 5; beRepeated; jsonFieldName: \'labels\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSWriteRequest >> add_labels: anObject [
	self labelss add: anObject.
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> add_writes: anObject [
	self writess add: anObject.
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> database [
	 ^database
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> database: anObject [
	database:= anObject.
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> labelss [
	 ^labels ifNil: [ labels := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> stream_id [
	 ^stream_id
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> stream_id: anObject [
	stream_id:= anObject.
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> stream_token [
	 ^stream_token
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> stream_token: anObject [
	stream_token:= anObject.
]

{ #category : #accessing }
GCP_GCFSWriteRequest >> writess [
	 ^writes ifNil: [ writes := OrderedCollection new ]
]
