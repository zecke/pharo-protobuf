Class {
	#name : #'GCP_GPBFileOptions_OptimizeMode',
	#superclass : #PBTypeEnum,
	#classVars : [
		'CODE_SIZE',
		'LITE_RUNTIME',
		'SPEED'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #'as yet unclassified' }
GCP_GPBFileOptions_OptimizeMode class >> CODE_SIZE [
	^ CODE_SIZE
]

{ #category : #'as yet unclassified' }
GCP_GPBFileOptions_OptimizeMode class >> LITE_RUNTIME [
	^ LITE_RUNTIME
]

{ #category : #'as yet unclassified' }
GCP_GPBFileOptions_OptimizeMode class >> SPEED [
	^ SPEED
]

{ #category : #'as yet unclassified' }
GCP_GPBFileOptions_OptimizeMode class >> initialize [
SPEED := 1.
CODE_SIZE := 2.
LITE_RUNTIME := 3.

]
