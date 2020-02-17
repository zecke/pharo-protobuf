Class {
	#name : #'GCP_GCFSValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#boolean_value => ((PBPropertySlot with: #PBTypeBool) fieldName: \'boolean_value\'; fieldNumber: 1; beOptional; jsonFieldName: \'booleanValue\')',
		'#integer_value => ((PBPropertySlot with: #PBTypeInt64) fieldName: \'integer_value\'; fieldNumber: 2; beOptional; jsonFieldName: \'integerValue\')',
		'#double_value => ((PBPropertySlot with: #PBTypeDouble) fieldName: \'double_value\'; fieldNumber: 3; beOptional; jsonFieldName: \'doubleValue\')',
		'#reference_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'reference_value\'; fieldNumber: 5; beOptional; jsonFieldName: \'referenceValue\')',
		'#map_value => ((PBPropertySlot with: #GCP_GCFSMapValue) fieldName: \'map_value\'; fieldNumber: 6; beOptional; jsonFieldName: \'mapValue\')',
		'#geo_point_value => ((PBPropertySlot with: #GCP_GTPLatLng) fieldName: \'geo_point_value\'; fieldNumber: 8; beOptional; jsonFieldName: \'geoPointValue\')',
		'#array_value => ((PBPropertySlot with: #GCP_GCFSArrayValue) fieldName: \'array_value\'; fieldNumber: 9; beOptional; jsonFieldName: \'arrayValue\')',
		'#timestamp_value => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'timestamp_value\'; fieldNumber: 10; beOptional; jsonFieldName: \'timestampValue\')',
		'#null_value => ((PBPropertySlot with: #GCP_GPBNullValue) fieldName: \'null_value\'; fieldNumber: 11; beOptional; jsonFieldName: \'nullValue\')',
		'#string_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'string_value\'; fieldNumber: 17; beOptional; jsonFieldName: \'stringValue\')',
		'#bytes_value => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'bytes_value\'; fieldNumber: 18; beOptional; jsonFieldName: \'bytesValue\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSValue >> array_value [
	 ^array_value
]

{ #category : #accessing }
GCP_GCFSValue >> array_value: anObject [
	array_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> boolean_value [
	 ^boolean_value
]

{ #category : #accessing }
GCP_GCFSValue >> boolean_value: anObject [
	boolean_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> bytes_value [
	 ^bytes_value
]

{ #category : #accessing }
GCP_GCFSValue >> bytes_value: anObject [
	bytes_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> double_value [
	 ^double_value
]

{ #category : #accessing }
GCP_GCFSValue >> double_value: anObject [
	double_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> geo_point_value [
	 ^geo_point_value
]

{ #category : #accessing }
GCP_GCFSValue >> geo_point_value: anObject [
	geo_point_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> integer_value [
	 ^integer_value
]

{ #category : #accessing }
GCP_GCFSValue >> integer_value: anObject [
	integer_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> map_value [
	 ^map_value
]

{ #category : #accessing }
GCP_GCFSValue >> map_value: anObject [
	map_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> null_value [
	 ^null_value
]

{ #category : #accessing }
GCP_GCFSValue >> null_value: anObject [
	null_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> reference_value [
	 ^reference_value
]

{ #category : #accessing }
GCP_GCFSValue >> reference_value: anObject [
	reference_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> string_value [
	 ^string_value
]

{ #category : #accessing }
GCP_GCFSValue >> string_value: anObject [
	string_value:= anObject.
]

{ #category : #accessing }
GCP_GCFSValue >> timestamp_value [
	 ^timestamp_value
]

{ #category : #accessing }
GCP_GCFSValue >> timestamp_value: anObject [
	timestamp_value:= anObject.
]
