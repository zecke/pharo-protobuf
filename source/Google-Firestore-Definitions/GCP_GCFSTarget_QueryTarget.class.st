Class {
	#name : #'GCP_GCFSTarget_QueryTarget',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#parent => ((PBPropertySlot with: #PBTypeString) fieldName: \'parent\'; fieldNumber: 1; beOptional; jsonFieldName: \'parent\')',
		'#structured_query => ((PBPropertySlot with: #GCP_GCFSStructuredQuery) fieldName: \'structured_query\'; fieldNumber: 2; beOptional; jsonFieldName: \'structuredQuery\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSTarget_QueryTarget >> parent [
	 ^parent
]

{ #category : #accessing }
GCP_GCFSTarget_QueryTarget >> parent: anObject [
	parent:= anObject.
]

{ #category : #accessing }
GCP_GCFSTarget_QueryTarget >> structured_query [
	 ^structured_query
]

{ #category : #accessing }
GCP_GCFSTarget_QueryTarget >> structured_query: anObject [
	structured_query:= anObject.
]
