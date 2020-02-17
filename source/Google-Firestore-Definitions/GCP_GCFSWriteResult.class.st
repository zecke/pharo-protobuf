Class {
	#name : #'GCP_GCFSWriteResult',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#update_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'update_time\'; fieldNumber: 1; beOptional; jsonFieldName: \'updateTime\')',
		'#transform_results => ((PBPropertySlot with: #GCP_GCFSValue) fieldName: \'transform_results\'; fieldNumber: 2; beRepeated; jsonFieldName: \'transformResults\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSWriteResult >> add_transform_results: anObject [
	self transform_resultss add: anObject.
]

{ #category : #accessing }
GCP_GCFSWriteResult >> transform_resultss [
	 ^transform_results ifNil: [ transform_results := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSWriteResult >> update_time [
	 ^update_time
]

{ #category : #accessing }
GCP_GCFSWriteResult >> update_time: anObject [
	update_time:= anObject.
]
