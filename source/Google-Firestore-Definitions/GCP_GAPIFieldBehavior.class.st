Class {
	#name : #'GCP_GAPIFieldBehavior',
	#superclass : #PBTypeEnum,
	#classVars : [
		'FIELD_BEHAVIOR_UNSPECIFIED',
		'IMMUTABLE',
		'INPUT_ONLY',
		'OPTIONAL',
		'OUTPUT_ONLY',
		'REQUIRED'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #'as yet unclassified' }
GCP_GAPIFieldBehavior class >> FIELD_BEHAVIOR_UNSPECIFIED [
	^ FIELD_BEHAVIOR_UNSPECIFIED
]

{ #category : #'as yet unclassified' }
GCP_GAPIFieldBehavior class >> IMMUTABLE [
	^ IMMUTABLE
]

{ #category : #'as yet unclassified' }
GCP_GAPIFieldBehavior class >> INPUT_ONLY [
	^ INPUT_ONLY
]

{ #category : #'as yet unclassified' }
GCP_GAPIFieldBehavior class >> OPTIONAL [
	^ OPTIONAL
]

{ #category : #'as yet unclassified' }
GCP_GAPIFieldBehavior class >> OUTPUT_ONLY [
	^ OUTPUT_ONLY
]

{ #category : #'as yet unclassified' }
GCP_GAPIFieldBehavior class >> REQUIRED [
	^ REQUIRED
]

{ #category : #'as yet unclassified' }
GCP_GAPIFieldBehavior class >> initialize [
FIELD_BEHAVIOR_UNSPECIFIED := 0.
OPTIONAL := 1.
REQUIRED := 2.
OUTPUT_ONLY := 3.
INPUT_ONLY := 4.
IMMUTABLE := 5.

]
