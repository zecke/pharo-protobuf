Class {
	#name : #'GCP_GCFSStructuredQuery_CompositeFilter',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#op => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_CompositeFilter_Operator) fieldName: \'op\'; fieldNumber: 1; beOptional; jsonFieldName: \'op\')',
		'#filters => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_Filter) fieldName: \'filters\'; fieldNumber: 2; beRepeated; jsonFieldName: \'filters\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery_CompositeFilter >> add_filters: anObject [
	self filterss add: anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_CompositeFilter >> filterss [
	 ^filters ifNil: [ filters := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_CompositeFilter >> op [
	 ^op
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_CompositeFilter >> op: anObject [
	op:= anObject.
]
