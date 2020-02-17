Class {
	#name : #'GCP_GCFSCommitResponse',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#write_results => ((PBPropertySlot with: #GCP_GCFSWriteResult) fieldName: \'write_results\'; fieldNumber: 1; beRepeated; jsonFieldName: \'writeResults\')',
		'#commit_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'commit_time\'; fieldNumber: 2; beOptional; jsonFieldName: \'commitTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSCommitResponse >> add_write_results: anObject [
	self write_resultss add: anObject.
]

{ #category : #accessing }
GCP_GCFSCommitResponse >> commit_time [
	 ^commit_time
]

{ #category : #accessing }
GCP_GCFSCommitResponse >> commit_time: anObject [
	commit_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSCommitResponse >> write_resultss [
	 ^write_results ifNil: [ write_results := OrderedCollection new ]
]
