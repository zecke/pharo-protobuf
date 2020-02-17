Class {
	#name : #'GCP_GPBFieldOptions_JSType',
	#superclass : #PBTypeEnum,
	#classVars : [
		'JS_NORMAL',
		'JS_NUMBER',
		'JS_STRING'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #'as yet unclassified' }
GCP_GPBFieldOptions_JSType class >> JS_NORMAL [
	^ JS_NORMAL
]

{ #category : #'as yet unclassified' }
GCP_GPBFieldOptions_JSType class >> JS_NUMBER [
	^ JS_NUMBER
]

{ #category : #'as yet unclassified' }
GCP_GPBFieldOptions_JSType class >> JS_STRING [
	^ JS_STRING
]

{ #category : #'as yet unclassified' }
GCP_GPBFieldOptions_JSType class >> initialize [
JS_NORMAL := 0.
JS_STRING := 1.
JS_NUMBER := 2.

]
