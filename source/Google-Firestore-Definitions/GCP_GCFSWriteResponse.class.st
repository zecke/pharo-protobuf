Class {
	#name : #'GCP_GCFSWriteResponse',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#stream_id => ((PBPropertySlot with: #PBTypeString) fieldName: \'stream_id\'; fieldNumber: 1; beOptional; jsonFieldName: \'streamId\')',
		'#stream_token => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'stream_token\'; fieldNumber: 2; beOptional; jsonFieldName: \'streamToken\')',
		'#write_results => ((PBPropertySlot with: #GCP_GCFSWriteResult) fieldName: \'write_results\'; fieldNumber: 3; beRepeated; jsonFieldName: \'writeResults\')',
		'#commit_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'commit_time\'; fieldNumber: 4; beOptional; jsonFieldName: \'commitTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSWriteResponse >> add_write_results: anObject [
	self write_resultss add: anObject.
]

{ #category : #accessing }
GCP_GCFSWriteResponse >> commit_time [
	 ^commit_time
]

{ #category : #accessing }
GCP_GCFSWriteResponse >> commit_time: anObject [
	commit_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSWriteResponse >> stream_id [
	 ^stream_id
]

{ #category : #accessing }
GCP_GCFSWriteResponse >> stream_id: anObject [
	stream_id:= anObject.
]

{ #category : #accessing }
GCP_GCFSWriteResponse >> stream_token [
	 ^stream_token
]

{ #category : #accessing }
GCP_GCFSWriteResponse >> stream_token: anObject [
	stream_token:= anObject.
]

{ #category : #accessing }
GCP_GCFSWriteResponse >> write_resultss [
	 ^write_results ifNil: [ write_results := OrderedCollection new ]
]
