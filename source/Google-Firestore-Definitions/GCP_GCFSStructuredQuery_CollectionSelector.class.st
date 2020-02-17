Class {
	#name : #'GCP_GCFSStructuredQuery_CollectionSelector',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#collection_id => ((PBPropertySlot with: #PBTypeString) fieldName: \'collection_id\'; fieldNumber: 2; beOptional; jsonFieldName: \'collectionId\')',
		'#all_descendants => ((PBPropertySlot with: #PBTypeBool) fieldName: \'all_descendants\'; fieldNumber: 3; beOptional; jsonFieldName: \'allDescendants\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery_CollectionSelector >> all_descendants [
	 ^all_descendants
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_CollectionSelector >> all_descendants: anObject [
	all_descendants:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_CollectionSelector >> collection_id [
	 ^collection_id
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_CollectionSelector >> collection_id: anObject [
	collection_id:= anObject.
]
