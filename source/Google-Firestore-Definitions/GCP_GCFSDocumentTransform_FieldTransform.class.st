Class {
	#name : #'GCP_GCFSDocumentTransform_FieldTransform',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#field_path => ((PBPropertySlot with: #PBTypeString) fieldName: \'field_path\'; fieldNumber: 1; beOptional; jsonFieldName: \'fieldPath\')',
		'#set_to_server_value => ((PBPropertySlot with: #GCP_GCFSDocumentTransform_FieldTransform_ServerValue) fieldName: \'set_to_server_value\'; fieldNumber: 2; beOptional; jsonFieldName: \'setToServerValue\')',
		'#increment => ((PBPropertySlot with: #GCP_GCFSValue) fieldName: \'increment\'; fieldNumber: 3; beOptional; jsonFieldName: \'increment\')',
		'#maximum => ((PBPropertySlot with: #GCP_GCFSValue) fieldName: \'maximum\'; fieldNumber: 4; beOptional; jsonFieldName: \'maximum\')',
		'#minimum => ((PBPropertySlot with: #GCP_GCFSValue) fieldName: \'minimum\'; fieldNumber: 5; beOptional; jsonFieldName: \'minimum\')',
		'#append_missing_elements => ((PBPropertySlot with: #GCP_GCFSArrayValue) fieldName: \'append_missing_elements\'; fieldNumber: 6; beOptional; jsonFieldName: \'appendMissingElements\')',
		'#remove_all_from_array => ((PBPropertySlot with: #GCP_GCFSArrayValue) fieldName: \'remove_all_from_array\'; fieldNumber: 7; beOptional; jsonFieldName: \'removeAllFromArray\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> append_missing_elements [
	 ^append_missing_elements
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> append_missing_elements: anObject [
	append_missing_elements:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> field_path [
	 ^field_path
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> field_path: anObject [
	field_path:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> increment [
	 ^increment
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> increment: anObject [
	increment:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> maximum [
	 ^maximum
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> maximum: anObject [
	maximum:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> minimum [
	 ^minimum
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> minimum: anObject [
	minimum:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> remove_all_from_array [
	 ^remove_all_from_array
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> remove_all_from_array: anObject [
	remove_all_from_array:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> set_to_server_value [
	 ^set_to_server_value
]

{ #category : #accessing }
GCP_GCFSDocumentTransform_FieldTransform >> set_to_server_value: anObject [
	set_to_server_value:= anObject.
]
