Class {
	#name : #PBTypeEnum,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeEnum class >> defaultValueForInitializeCode: aSlot [
	^String streamContents: [:stream |
		stream
			nextPutAll: (classPool at: aSlot defaultValue) printString;
			nextPutAll: '" '; nextPutAll: aSlot defaultValue; nextPutAll: ' "' ].
]

{ #category : #'as yet unclassified' }
PBTypeEnum class >> marshal: aValue to: anEncoder with: aSlot [
	anEncoder nextPutVarInt: aValue field: aSlot fieldNumber.
]

{ #category : #'as yet unclassified' }
PBTypeEnum class >> unmarshalFrom: anInteger [ 
	self flag: #todo. "TODO(holgerf): Do input validation and if this value is valid?"
	^anInteger
]

{ #category : #'as yet unclassified' }
PBTypeEnum class >> wireType [
	^PBWireTypeVarInt
]
