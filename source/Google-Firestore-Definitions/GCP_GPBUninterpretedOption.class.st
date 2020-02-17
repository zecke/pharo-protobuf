Class {
	#name : #'GCP_GPBUninterpretedOption',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #GCP_GPBUninterpretedOption_NamePart) fieldName: \'name\'; fieldNumber: 2; beRepeated; jsonFieldName: \'name\')',
		'#identifier_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'identifier_value\'; fieldNumber: 3; beOptional; jsonFieldName: \'identifierValue\')',
		'#positive_int_value => ((PBPropertySlot with: #PBTypeUint64) fieldName: \'positive_int_value\'; fieldNumber: 4; beOptional; jsonFieldName: \'positiveIntValue\')',
		'#negative_int_value => ((PBPropertySlot with: #PBTypeInt64) fieldName: \'negative_int_value\'; fieldNumber: 5; beOptional; jsonFieldName: \'negativeIntValue\')',
		'#double_value => ((PBPropertySlot with: #PBTypeDouble) fieldName: \'double_value\'; fieldNumber: 6; beOptional; jsonFieldName: \'doubleValue\')',
		'#string_value => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'string_value\'; fieldNumber: 7; beOptional; jsonFieldName: \'stringValue\')',
		'#aggregate_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'aggregate_value\'; fieldNumber: 8; beOptional; jsonFieldName: \'aggregateValue\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBUninterpretedOption >> add_name: anObject [
	self names add: anObject.
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> aggregate_value [
	 ^aggregate_value
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> aggregate_value: anObject [
	aggregate_value:= anObject.
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> double_value [
	 ^double_value
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> double_value: anObject [
	double_value:= anObject.
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> identifier_value [
	 ^identifier_value
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> identifier_value: anObject [
	identifier_value:= anObject.
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> names [
	 ^name ifNil: [ name := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> negative_int_value [
	 ^negative_int_value
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> negative_int_value: anObject [
	negative_int_value:= anObject.
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> positive_int_value [
	 ^positive_int_value
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> positive_int_value: anObject [
	positive_int_value:= anObject.
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> string_value [
	 ^string_value
]

{ #category : #accessing }
GCP_GPBUninterpretedOption >> string_value: anObject [
	string_value:= anObject.
]
