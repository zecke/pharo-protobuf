Class {
	#name : #PBTypeEnum,
	#superclass : #PBTypeName,
	#instVars : [
		'enumValue'
	],
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeEnum class >> unmarshalFrom: anInteger [ 
	"TODO(holgerf): Do input validation and if this value is valid?"
	^anInteger
]

{ #category : #'as yet unclassified' }
PBTypeEnum >> enumValue: aValue [ 
	enumValue := aValue
]
