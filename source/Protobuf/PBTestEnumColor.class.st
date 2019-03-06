Class {
	#name : #PBTestEnumColor,
	#superclass : #PBTypeEnum,
	#classVars : [
		'BLUE',
		'GREEN',
		'RED'
	],
	#category : #'Protobuf-Tests'
}

{ #category : #'class initialization' }
PBTestEnumColor class >> BLUE [
	^BLUE
]

{ #category : #'class initialization' }
PBTestEnumColor class >> GREEN [
	^GREEN
]

{ #category : #'class initialization' }
PBTestEnumColor class >> RED [
	^RED
]

{ #category : #'class initialization' }
PBTestEnumColor class >> initialize [
	RED := 0.
	GREEN := 1.
	BLUE := 2.
]
