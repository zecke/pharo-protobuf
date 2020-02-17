Class {
	#name : #'GCP_GCFSDocumentTransform',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#document => ((PBPropertySlot with: #PBTypeString) fieldName: \'document\'; fieldNumber: 1; beOptional; jsonFieldName: \'document\')',
		'#field_transforms => ((PBPropertySlot with: #GCP_GCFSDocumentTransform_FieldTransform) fieldName: \'field_transforms\'; fieldNumber: 2; beRepeated; jsonFieldName: \'fieldTransforms\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSDocumentTransform >> add_field_transforms: anObject [
	self field_transformss add: anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentTransform >> document [
	 ^document
]

{ #category : #accessing }
GCP_GCFSDocumentTransform >> document: anObject [
	document:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentTransform >> field_transformss [
	 ^field_transforms ifNil: [ field_transforms := OrderedCollection new ]
]
