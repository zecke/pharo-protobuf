Class {
	#name : #'GCP_GCFSStructuredQuery_UnaryFilter',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#op => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_UnaryFilter_Operator) fieldName: \'op\'; fieldNumber: 1; beOptional; jsonFieldName: \'op\')',
		'#field => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_FieldReference) fieldName: \'field\'; fieldNumber: 2; beOptional; jsonFieldName: \'field\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery_UnaryFilter >> field [
	 ^field
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_UnaryFilter >> field: anObject [
	field:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_UnaryFilter >> op [
	 ^op
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_UnaryFilter >> op: anObject [
	op:= anObject.
]
