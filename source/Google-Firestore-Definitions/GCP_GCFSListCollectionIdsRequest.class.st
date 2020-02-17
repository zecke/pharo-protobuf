Class {
	#name : #'GCP_GCFSListCollectionIdsRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#parent => ((PBPropertySlot with: #PBTypeString) fieldName: \'parent\'; fieldNumber: 1; beOptional; jsonFieldName: \'parent\')',
		'#page_size => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'page_size\'; fieldNumber: 2; beOptional; jsonFieldName: \'pageSize\')',
		'#page_token => ((PBPropertySlot with: #PBTypeString) fieldName: \'page_token\'; fieldNumber: 3; beOptional; jsonFieldName: \'pageToken\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSListCollectionIdsRequest >> page_size [
	 ^page_size
]

{ #category : #accessing }
GCP_GCFSListCollectionIdsRequest >> page_size: anObject [
	page_size:= anObject.
]

{ #category : #accessing }
GCP_GCFSListCollectionIdsRequest >> page_token [
	 ^page_token
]

{ #category : #accessing }
GCP_GCFSListCollectionIdsRequest >> page_token: anObject [
	page_token:= anObject.
]

{ #category : #accessing }
GCP_GCFSListCollectionIdsRequest >> parent [
	 ^parent
]

{ #category : #accessing }
GCP_GCFSListCollectionIdsRequest >> parent: anObject [
	parent:= anObject.
]
