Class {
	#name : #'GCP_GCFSTargetChange_TargetChangeType',
	#superclass : #PBTypeEnum,
	#classVars : [
		'ADD',
		'CURRENT',
		'NO_CHANGE',
		'REMOVE',
		'RESET'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #'as yet unclassified' }
GCP_GCFSTargetChange_TargetChangeType class >> ADD [
	^ ADD
]

{ #category : #'as yet unclassified' }
GCP_GCFSTargetChange_TargetChangeType class >> CURRENT [
	^ CURRENT
]

{ #category : #'as yet unclassified' }
GCP_GCFSTargetChange_TargetChangeType class >> NO_CHANGE [
	^ NO_CHANGE
]

{ #category : #'as yet unclassified' }
GCP_GCFSTargetChange_TargetChangeType class >> REMOVE [
	^ REMOVE
]

{ #category : #'as yet unclassified' }
GCP_GCFSTargetChange_TargetChangeType class >> RESET [
	^ RESET
]

{ #category : #'as yet unclassified' }
GCP_GCFSTargetChange_TargetChangeType class >> initialize [
NO_CHANGE := 0.
ADD := 1.
REMOVE := 2.
CURRENT := 3.
RESET := 4.

]
