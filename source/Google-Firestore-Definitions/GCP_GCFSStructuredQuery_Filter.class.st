Class {
	#name : #'GCP_GCFSStructuredQuery_Filter',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#composite_filter => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_CompositeFilter) fieldName: \'composite_filter\'; fieldNumber: 1; beOptional; jsonFieldName: \'compositeFilter\')',
		'#field_filter => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_FieldFilter) fieldName: \'field_filter\'; fieldNumber: 2; beOptional; jsonFieldName: \'fieldFilter\')',
		'#unary_filter => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_UnaryFilter) fieldName: \'unary_filter\'; fieldNumber: 3; beOptional; jsonFieldName: \'unaryFilter\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery_Filter >> composite_filter [
	 ^composite_filter
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Filter >> composite_filter: anObject [
	composite_filter:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Filter >> field_filter [
	 ^field_filter
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Filter >> field_filter: anObject [
	field_filter:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Filter >> unary_filter [
	 ^unary_filter
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Filter >> unary_filter: anObject [
	unary_filter:= anObject.
]
