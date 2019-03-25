Class {
	#name : #PBPropertySlot,
	#superclass : #InstanceVariableSlot,
	#instVars : [
		'fieldName',
		'jsonFieldName',
		'jsonOmitEmpty',
		'defaultValue',
		'optional',
		'repeated',
		'fieldNumber',
		'encodingTypeName',
		'resolvedEncodingType'
	],
	#category : #'Protobuf-Slots'
}

{ #category : #'instance creation' }
PBPropertySlot class >> with: aType [
	^self new encodingTypeName: aType
]

{ #category : #accessing }
PBPropertySlot >> beOptional [
	optional := true
]

{ #category : #accessing }
PBPropertySlot >> beRepeated [
	repeated := true.
	resolvedEncodingType := PBRepeatedType initWith: encodingTypeName. 
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> decodeFrom: aValue to: anInstance [
	resolvedEncodingType decodeFrom: aValue instVarIndex: index to: anInstance.
]

{ #category : #accessing }
PBPropertySlot >> defaultValue: aValue [
	defaultValue := aValue
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> encodingTypeName [
	^ encodingTypeName ifNil: [ resolvedEncodingType typeName ]
]

{ #category : #accessing }
PBPropertySlot >> encodingTypeName: aTypeName [
	"Either a symbol PBTypeBool or subclasses based on PBTypeEnum and PBTypeMessage."
	resolvedEncodingType := nil.
	encodingTypeName := aTypeName.
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> fieldName [
	^ fieldName
]

{ #category : #accessing }
PBPropertySlot >> fieldName: aName [
	fieldName := aName
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> fieldNumber [
	^ fieldNumber
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> fieldNumber: anInteger [ 
	fieldNumber := anInteger
]

{ #category : #comparing }
PBPropertySlot >> hasSameDefinitionAs: otherSlot [
	self flag: #todo. "Compare other attributes!"
	^ (super hasSameDefinitionAs: otherSlot) 
		and: [ fieldNumber = otherSlot fieldNumber
		and: [ fieldName = otherSlot fieldName
		and: [ optional = otherSlot optional
		and: [ repeated = otherSlot repeated
		]]]]
]

{ #category : #accessing }
PBPropertySlot >> initialize [
	super initialize.
	optional := false.
	repeated := false.
	jsonOmitEmpty := false.
]

{ #category : #accessing }
PBPropertySlot >> jsonFieldName: aName [
	jsonFieldName := aName
]

{ #category : #accessing }
PBPropertySlot >> jsonOmitEmtpy: aBoolean [
	jsonOmitEmpty := aBoolean
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> materialize: anObject to: aStream [
	| val |
	self flag: #TODO. "Skip optional entries that are 0/have default value"
	val := thisContext object: anObject instVarAt: index.
	(val isNil & (optional | repeated)) ifTrue: [ ^self ].
	resolvedEncodingType marshal: val to: aStream with: self.
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> optional [
	^ optional
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> pharoFieldName [
	"fieldName modified to follow a Pharo style."
	self flag: #todo.  "TODO(zecke): Figure out if we want to adopt a camelcase policy"
	^fieldName
]

{ #category : #printing }
PBPropertySlot >> printOn: aStream [
	aStream 
		store: self name;
		nextPutAll: ' => ((PBPropertySlot with: #';
		nextPutAll: self encodingTypeName;
		nextPutAll: ') fieldName: '''; nextPutAll: fieldName;
		nextPutAll: '''; fieldNumber: ';
		nextPutAll: fieldNumber displayString.
	optional ifTrue: [
		aStream nextPutAll: '; beOptional'
	].
	repeated ifTrue: [
		aStream nextPutAll: '; beRepeated'
	].
	defaultValue ifNotNil: [
		| stringValue |
		"Write integers and booleans without quotes"
		stringValue := defaultValue isCollection
								ifTrue: [ '''', defaultValue displayString, '''' ]
								ifFalse: [ defaultValue displayString ].
		aStream
			nextPutAll: '; defaultValue: ';
			nextPutAll: stringValue.
	].
	jsonFieldName ifNotNil: [
		aStream
			nextPutAll: '; jsonFieldName: ''';
			nextPutAll: jsonFieldName;
			nextPutAll: ''''.
	].
	jsonOmitEmpty ifTrue: [
		aStream
			nextPutAll: '; jsonOmitEmpty: true'
	].
	aStream
		nextPutAll: ')'.
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> repeated [
	^ repeated
]

{ #category : #'selector-creation' }
PBPropertySlot >> resolveEncodingType [
	"We are loading types in a random order but need to resolve them at load."
	resolvedEncodingType ifNil: [
		resolvedEncodingType := self class environment at: encodingTypeName.].
	resolvedEncodingType resolveEncodingType.
]
