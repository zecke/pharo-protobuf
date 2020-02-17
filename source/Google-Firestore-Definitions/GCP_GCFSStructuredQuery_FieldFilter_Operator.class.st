Class {
	#name : #'GCP_GCFSStructuredQuery_FieldFilter_Operator',
	#superclass : #PBTypeEnum,
	#classVars : [
		'ARRAY_CONTAINS',
		'ARRAY_CONTAINS_ANY',
		'EQUAL',
		'GREATER_THAN',
		'GREATER_THAN_OR_EQUAL',
		'IN',
		'LESS_THAN',
		'LESS_THAN_OR_EQUAL',
		'OPERATOR_UNSPECIFIED'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> ARRAY_CONTAINS [
	^ ARRAY_CONTAINS
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> ARRAY_CONTAINS_ANY [
	^ ARRAY_CONTAINS_ANY
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> EQUAL [
	^ EQUAL
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> GREATER_THAN [
	^ GREATER_THAN
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> GREATER_THAN_OR_EQUAL [
	^ GREATER_THAN_OR_EQUAL
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> IN [
	^ IN
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> LESS_THAN [
	^ LESS_THAN
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> LESS_THAN_OR_EQUAL [
	^ LESS_THAN_OR_EQUAL
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> OPERATOR_UNSPECIFIED [
	^ OPERATOR_UNSPECIFIED
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_FieldFilter_Operator class >> initialize [
OPERATOR_UNSPECIFIED := 0.
LESS_THAN := 1.
LESS_THAN_OR_EQUAL := 2.
GREATER_THAN := 3.
GREATER_THAN_OR_EQUAL := 4.
EQUAL := 5.
ARRAY_CONTAINS := 7.
IN := 8.
ARRAY_CONTAINS_ANY := 9.

]
