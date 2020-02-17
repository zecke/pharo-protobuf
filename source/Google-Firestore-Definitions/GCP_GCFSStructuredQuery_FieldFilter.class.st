Class {
	#name : #'GCP_GCFSStructuredQuery_FieldFilter',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#field => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_FieldReference) fieldName: \'field\'; fieldNumber: 1; beOptional; jsonFieldName: \'field\')',
		'#op => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_FieldFilter_Operator) fieldName: \'op\'; fieldNumber: 2; beOptional; jsonFieldName: \'op\')',
		'#value => ((PBPropertySlot with: #GCP_GCFSValue) fieldName: \'value\'; fieldNumber: 3; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery_FieldFilter >> field [
	 ^field
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_FieldFilter >> field: anObject [
	field:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_FieldFilter >> op [
	 ^op
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_FieldFilter >> op: anObject [
	op:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_FieldFilter >> value [
	 ^value
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_FieldFilter >> value: anObject [
	value:= anObject.
]
