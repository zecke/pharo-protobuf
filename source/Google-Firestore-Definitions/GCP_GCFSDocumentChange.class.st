Class {
	#name : #'GCP_GCFSDocumentChange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#document => ((PBPropertySlot with: #GCP_GCFSDocument) fieldName: \'document\'; fieldNumber: 1; beOptional; jsonFieldName: \'document\')',
		'#target_ids => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'target_ids\'; fieldNumber: 5; beRepeated; jsonFieldName: \'targetIds\')',
		'#removed_target_ids => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'removed_target_ids\'; fieldNumber: 6; beRepeated; jsonFieldName: \'removedTargetIds\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSDocumentChange >> add_removed_target_ids: anObject [
	self removed_target_idss add: anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentChange >> add_target_ids: anObject [
	self target_idss add: anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentChange >> document [
	 ^document
]

{ #category : #accessing }
GCP_GCFSDocumentChange >> document: anObject [
	document:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentChange >> removed_target_idss [
	 ^removed_target_ids ifNil: [ removed_target_ids := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSDocumentChange >> target_idss [
	 ^target_ids ifNil: [ target_ids := OrderedCollection new ]
]
