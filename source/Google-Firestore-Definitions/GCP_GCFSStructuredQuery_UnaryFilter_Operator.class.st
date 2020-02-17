Class {
	#name : #'GCP_GCFSStructuredQuery_UnaryFilter_Operator',
	#superclass : #PBTypeEnum,
	#classVars : [
		'IS_NAN',
		'IS_NULL',
		'OPERATOR_UNSPECIFIED'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_UnaryFilter_Operator class >> IS_NAN [
	^ IS_NAN
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_UnaryFilter_Operator class >> IS_NULL [
	^ IS_NULL
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_UnaryFilter_Operator class >> OPERATOR_UNSPECIFIED [
	^ OPERATOR_UNSPECIFIED
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_UnaryFilter_Operator class >> initialize [
OPERATOR_UNSPECIFIED := 0.
IS_NAN := 2.
IS_NULL := 3.

]
