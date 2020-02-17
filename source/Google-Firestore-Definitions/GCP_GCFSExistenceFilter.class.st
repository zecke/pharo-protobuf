Class {
	#name : #'GCP_GCFSExistenceFilter',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#target_id => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'target_id\'; fieldNumber: 1; beOptional; jsonFieldName: \'targetId\')',
		'#count => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'count\'; fieldNumber: 2; beOptional; jsonFieldName: \'count\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSExistenceFilter >> count [
	 ^count
]

{ #category : #accessing }
GCP_GCFSExistenceFilter >> count: anObject [
	count:= anObject.
]

{ #category : #accessing }
GCP_GCFSExistenceFilter >> target_id [
	 ^target_id
]

{ #category : #accessing }
GCP_GCFSExistenceFilter >> target_id: anObject [
	target_id:= anObject.
]
