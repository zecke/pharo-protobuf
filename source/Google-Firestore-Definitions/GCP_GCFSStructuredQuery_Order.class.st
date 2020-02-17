Class {
	#name : #'GCP_GCFSStructuredQuery_Order',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#field => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_FieldReference) fieldName: \'field\'; fieldNumber: 1; beOptional; jsonFieldName: \'field\')',
		'#direction => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_Direction) fieldName: \'direction\'; fieldNumber: 2; beOptional; jsonFieldName: \'direction\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery_Order >> direction [
	 ^direction
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Order >> direction: anObject [
	direction:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Order >> field [
	 ^field
]

{ #category : #accessing }
GCP_GCFSStructuredQuery_Order >> field: anObject [
	field:= anObject.
]
