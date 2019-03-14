Class {
	#name : #PBPropertySlot,
	#superclass : #InstanceVariableSlot,
	#instVars : [
		'encodingType',
		'fieldName',
		'jsonFieldName',
		'jsonOmitEmpty',
		'defaultValue',
		'optional',
		'repeated',
		'fieldNumber',
		'encodingTypeName'
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
	encodingType := PBRepeatedType initWith: encodingType. 
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> decodeFrom: aValue to: anInstance [ 
	self flag: #todo. "TODO(zecke): Make this a subclass to distinguish repeated from flat or have
	encodingType that is instance based and repeated?"
	encodingType decodeFrom: aValue instVarIndex: index to: anInstance.
]

{ #category : #accessing }
PBPropertySlot >> defaultValue: aValue [
	defaultValue := aValue
]

{ #category : #accessing }
PBPropertySlot >> encodingType: aType [
	"Either a class like PBTypeBool or subclasses based on PBTypeEnum and PBTypeMessage."
	encodingType := aType.
	encodingTypeName := aType typeName.
]

{ #category : #'as yet unclassified' }
PBPropertySlot >> encodingTypeName [
	^ encodingTypeName ifNil: [ encodingType typeName ]
]

{ #category : #accessing }
PBPropertySlot >> encodingTypeName: aTypeName [
	"Either a class like PBTypeBool or subclasses based on PBTypeEnum and PBTypeMessage."
	encodingType := nil.
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

{ #category : #'selector-creation' }
PBPropertySlot >> installingIn: aClass [
	"Make sure encodingType is valid."
	self resolveEncodingType.
	"Delegate to the type for the right kind of selector!"
	encodingType installingIn: aClass for: self.
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
	self flag: #TODO. "Skip optional entries that are 0"
	val := thisContext object: anObject instVarAt: index.
	(val isNil & (optional | repeated)) ifTrue: [ ^self ].
	encodingType marshal: val to: aStream with: self.
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
	"There might not be an encodingType or the PRRepeatedType might not have the
	right type resolved (e.g. a class is loaded before a dependency was loaded).
	Here we will resolve the final typeName."
	self flag: #todo.  "TODO(zecke): What if it can't be resolved? Can we avoid
	hardcoding this for repeated?"

	encodingType ifNil: [
		encodingType := self class environment at: encodingTypeName].
	repeated ifTrue: [
		encodingType baseType: (self class environment at: encodingTypeName).
	].
]
