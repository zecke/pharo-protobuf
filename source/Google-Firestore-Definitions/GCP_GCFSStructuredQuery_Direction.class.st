Class {
	#name : #'GCP_GCFSStructuredQuery_Direction',
	#superclass : #PBTypeEnum,
	#classVars : [
		'ASCENDING',
		'DESCENDING',
		'DIRECTION_UNSPECIFIED'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_Direction class >> ASCENDING [
	^ ASCENDING
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_Direction class >> DESCENDING [
	^ DESCENDING
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_Direction class >> DIRECTION_UNSPECIFIED [
	^ DIRECTION_UNSPECIFIED
]

{ #category : #'as yet unclassified' }
GCP_GCFSStructuredQuery_Direction class >> initialize [
DIRECTION_UNSPECIFIED := 0.
ASCENDING := 1.
DESCENDING := 2.

]
