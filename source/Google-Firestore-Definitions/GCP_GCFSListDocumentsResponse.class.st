Class {
	#name : #'GCP_GCFSListDocumentsResponse',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#documents => ((PBPropertySlot with: #GCP_GCFSDocument) fieldName: \'documents\'; fieldNumber: 1; beRepeated; jsonFieldName: \'documents\')',
		'#next_page_token => ((PBPropertySlot with: #PBTypeString) fieldName: \'next_page_token\'; fieldNumber: 2; beOptional; jsonFieldName: \'nextPageToken\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSListDocumentsResponse >> add_documents: anObject [
	self documentss add: anObject.
]

{ #category : #accessing }
GCP_GCFSListDocumentsResponse >> documentss [
	 ^documents ifNil: [ documents := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSListDocumentsResponse >> next_page_token [
	 ^next_page_token
]

{ #category : #accessing }
GCP_GCFSListDocumentsResponse >> next_page_token: anObject [
	next_page_token:= anObject.
]
