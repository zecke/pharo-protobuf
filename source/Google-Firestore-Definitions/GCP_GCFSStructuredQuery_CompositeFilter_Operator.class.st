Class {
	#name : #'GCP_GCFSStructuredQuery_CompositeFilter_Operator',
	#superclass : #PBTypeEnum,
	#classVars : [
		'AND',
		'OPERATOR_UNSPECIFIED'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_CompositeFilter_Operator class >> AND [
	^ AND
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_CompositeFilter_Operator class >> OPERATOR_UNSPECIFIED [
	^ OPERATOR_UNSPECIFIED
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_CompositeFilter_Operator class >> initialize [
OPERATOR_UNSPECIFIED := 0.
AND := 1.

]
