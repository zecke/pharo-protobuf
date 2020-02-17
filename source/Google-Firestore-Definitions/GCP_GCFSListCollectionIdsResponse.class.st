Class {
	#name : #'GCP_GCFSListCollectionIdsResponse',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#collection_ids => ((PBPropertySlot with: #PBTypeString) fieldName: \'collection_ids\'; fieldNumber: 1; beRepeated; jsonFieldName: \'collectionIds\')',
		'#next_page_token => ((PBPropertySlot with: #PBTypeString) fieldName: \'next_page_token\'; fieldNumber: 2; beOptional; jsonFieldName: \'nextPageToken\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSListCollectionIdsResponse >> add_collection_ids: anObject [
	self collection_idss add: anObject.
]

{ #category : #accessing }
GCP_GCFSListCollectionIdsResponse >> collection_idss [
	 ^collection_ids ifNil: [ collection_ids := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSListCollectionIdsResponse >> next_page_token [
	 ^next_page_token
]

{ #category : #accessing }
GCP_GCFSListCollectionIdsResponse >> next_page_token: anObject [
	next_page_token:= anObject.
]
