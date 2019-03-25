Class {
	#name : #PBRepeatedType,
	#superclass : #Object,
	#instVars : [
		'baseTypeName',
		'resolvedEncodingType'
	],
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBRepeatedType class >> initWith: aTypeName [
	^self new
		baseTypeName: aTypeName;
		yourself
]

{ #category : #accessing }
PBRepeatedType >> baseTypeName: aTypeName [
	baseTypeName := aTypeName
]

{ #category : #'as yet unclassified' }
PBRepeatedType >> decodeFrom: aValue instVarIndex: anIndex to: anInstance [
	| coll |
	self flag: #TODO. "Make this more efficient?"
	coll := thisContext object: anInstance  instVarAt: anIndex.
	coll ifNil: [
		coll := OrderedCollection new.
		thisContext object: anInstance  instVarAt: anIndex put: coll].
	coll add: (resolvedEncodingType unmarshalFrom: aValue).
]

{ #category : #'as yet unclassified' }
PBRepeatedType >> installingIn: aClass for: aSlot [ 
	| reader writer | 
	
	"Lazily initialize the collection. Call it mutable_.._s?"
	reader := String streamContents: [ :str |
		str 
			nextPutAll: aSlot pharoFieldName; nextPutAll: 's';
			cr;tab;
			nextPutAll: ' ^';
			nextPutAll: aSlot pharoFieldName;
			nextPutAll: ' ifNil: [ ';
			nextPutAll: aSlot pharoFieldName;
			nextPutAll: ' := OrderedCollection new ]'.
		 ].
	"Add an element"
	writer := String streamContents: [ :str |
		str 
			nextPutAll: 'add_'; nextPutAll: aSlot pharoFieldName;
			nextPutAll: ': anObject';
			cr;tab;
			nextPutAll: 'self ';
			nextPutAll: aSlot pharoFieldName;
			nextPutAll: 's add: anObject.'
		].
	aClass compile: reader classified: 'accessing'.
	aClass compile: writer classified: 'accessing'.
]

{ #category : #'as yet unclassified' }
PBRepeatedType >> marshal: aValue to: anEncoder with: aSlot [
	self flag: #TODO. "In proto3 there is an optimized repeated field. Use that?"
	aValue do: [:each |
		resolvedEncodingType marshal: each to: anEncoder with: aSlot].
]

{ #category : #accessing }
PBRepeatedType >> resolveEncodingType [
	resolvedEncodingType := self class environment at: baseTypeName.
]

{ #category : #'as yet unclassified' }
PBRepeatedType >> typeName [
	^baseTypeName
]
