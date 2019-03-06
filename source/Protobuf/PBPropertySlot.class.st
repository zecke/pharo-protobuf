Class {
	#name : #PBPropertySlot,
	#superclass : #AccessorInstanceVariableSlot,
	#instVars : [
		'encodingType',
		'fieldName',
		'jsonFieldName',
		'jsonOmitEmpty',
		'defaultValue',
		'optional',
		'repeated',
		'fieldNumber'
	],
	#category : #'Protobuf-Slots'
}

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
	encodingType := aType
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
		and: [ fieldName = otherSlot fieldName ] ]
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
	self flag: #TODO. "Skip optional entries that are 0"
	val := thisContext object: anObject instVarAt: index.
	(val isNil & (optional | repeated)) ifTrue: [ ^self ].
	encodingType marshal: val to: aStream with: self.
]

{ #category : #printing }
PBPropertySlot >> printOn: aStream [
	aStream 
		store: self name;
		nextPutAll: ' => (';
		nextPutAll: encodingType typeName;
		nextPutAll: ' asSlot fieldName: '''; nextPutAll: fieldName;
		nextPutAll: '''; fieldNumber: ';
		nextPutAll: fieldNumber displayString.
	optional ifTrue: [
		aStream nextPutAll: '; beOptional'
	].
	repeated ifTrue: [
		aStream nextPutAll: '; beRepeated'
	].
	defaultValue ifNotNil: [
		aStream
			nextPutAll: '; defaultValue: ''';
			nextPutAll: defaultValue;
			nextPutAll: ''''.
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
