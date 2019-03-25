Class {
	#name : #'GPBFieldOptions_CType',
	#superclass : #PBTypeEnum,
	#classVars : [
		'CORD',
		'STRING',
		'STRING_PIECE'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #'as yet unclassified' }
GPBFieldOptions_CType class >> CORD [
	^ CORD
]

{ #category : #'as yet unclassified' }
GPBFieldOptions_CType class >> STRING [
	^ STRING
]

{ #category : #'as yet unclassified' }
GPBFieldOptions_CType class >> STRING_PIECE [
	^ STRING_PIECE
]

{ #category : #'as yet unclassified' }
GPBFieldOptions_CType class >> initialize [
STRING := 0.
CORD := 1.
STRING_PIECE := 2.

]
