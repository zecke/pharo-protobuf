Class {
	#name : #'GCP_GCFSDocumentRemove',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#document => ((PBPropertySlot with: #PBTypeString) fieldName: \'document\'; fieldNumber: 1; beOptional; jsonFieldName: \'document\')',
		'#removed_target_ids => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'removed_target_ids\'; fieldNumber: 2; beRepeated; jsonFieldName: \'removedTargetIds\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 4; beOptional; jsonFieldName: \'readTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSDocumentRemove >> add_removed_target_ids: anObject [
	self removed_target_idss add: anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentRemove >> document [
	 ^document
]

{ #category : #accessing }
GCP_GCFSDocumentRemove >> document: anObject [
	document:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentRemove >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSDocumentRemove >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentRemove >> removed_target_idss [
	 ^removed_target_ids ifNil: [ removed_target_ids := OrderedCollection new ]
]
