Class {
	#name : #PBRepeatedType,
	#superclass : #Object,
	#instVars : [
		'baseType'
	],
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBRepeatedType class >> initWith: aType [ 
	^self new
		baseType: aType;
		yourself
]

{ #category : #'as yet unclassified' }
PBRepeatedType >> baseType: aClass [ 
	baseType := aClass
]

{ #category : #'as yet unclassified' }
PBRepeatedType >> decodeFrom: aValue instVarIndex: anIndex to: anInstance [
	| coll |
	self flag: #TODO. "Make this more efficient?"
	coll := thisContext object: anInstance  instVarAt: anIndex.
	coll ifNil: [
		coll := OrderedCollection new.
		thisContext object: anInstance  instVarAt: anIndex put: coll].
	coll add: (baseType unmarshalFrom: aValue).
]

{ #category : #'as yet unclassified' }
PBRepeatedType >> marshal: aValue to: anEncoder with: aSlot [
	self flag: #TODO. "In proto3 there is an optimized repeated field. Use that?"
	aValue do: [:each |
		baseType marshal: each to: anEncoder with: aSlot].
]

{ #category : #'as yet unclassified' }
PBRepeatedType >> typeName [
	^baseType typeName
]
