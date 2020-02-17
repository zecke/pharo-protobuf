Class {
	#name : #'GCP_GPBValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#null_value => ((PBPropertySlot with: #GCP_GPBNullValue) fieldName: \'null_value\'; fieldNumber: 1; beOptional; jsonFieldName: \'nullValue\')',
		'#number_value => ((PBPropertySlot with: #PBTypeDouble) fieldName: \'number_value\'; fieldNumber: 2; beOptional; jsonFieldName: \'numberValue\')',
		'#string_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'string_value\'; fieldNumber: 3; beOptional; jsonFieldName: \'stringValue\')',
		'#bool_value => ((PBPropertySlot with: #PBTypeBool) fieldName: \'bool_value\'; fieldNumber: 4; beOptional; jsonFieldName: \'boolValue\')',
		'#struct_value => ((PBPropertySlot with: #GCP_GPBStruct) fieldName: \'struct_value\'; fieldNumber: 5; beOptional; jsonFieldName: \'structValue\')',
		'#list_value => ((PBPropertySlot with: #GCP_GPBListValue) fieldName: \'list_value\'; fieldNumber: 6; beOptional; jsonFieldName: \'listValue\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBValue >> bool_value [
	 ^bool_value
]

{ #category : #accessing }
GCP_GPBValue >> bool_value: anObject [
	bool_value:= anObject.
]

{ #category : #accessing }
GCP_GPBValue >> list_value [
	 ^list_value
]

{ #category : #accessing }
GCP_GPBValue >> list_value: anObject [
	list_value:= anObject.
]

{ #category : #accessing }
GCP_GPBValue >> null_value [
	 ^null_value
]

{ #category : #accessing }
GCP_GPBValue >> null_value: anObject [
	null_value:= anObject.
]

{ #category : #accessing }
GCP_GPBValue >> number_value [
	 ^number_value
]

{ #category : #accessing }
GCP_GPBValue >> number_value: anObject [
	number_value:= anObject.
]

{ #category : #accessing }
GCP_GPBValue >> string_value [
	 ^string_value
]

{ #category : #accessing }
GCP_GPBValue >> string_value: anObject [
	string_value:= anObject.
]

{ #category : #accessing }
GCP_GPBValue >> struct_value [
	 ^struct_value
]

{ #category : #accessing }
GCP_GPBValue >> struct_value: anObject [
	struct_value:= anObject.
]
