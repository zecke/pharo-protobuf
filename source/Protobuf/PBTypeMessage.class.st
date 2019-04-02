Class {
	#name : #PBTypeMessage,
	#superclass : #PBTypeName,
	#classInstVars : [
		'fieldNumberToSlotMap'
	],
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeMessage class >> buildFieldNumberToSlotMap [
	^ self slots inject: Dictionary new into: [:dict :slot |
		dict at: slot fieldNumber put: slot.
		dict.
	]
]

{ #category : #'as yet unclassified' }
PBTypeMessage class >> fieldNumberToSlotMap [
	^fieldNumberToSlotMap
]

{ #category : #'as yet unclassified' }
PBTypeMessage class >> marshal: aMessage to: anEncoder with: aSlot [
	| data |
	data := aMessage materialize.
	anEncoder nextPutByteArray: data field: aSlot fieldNumber.
]

{ #category : #materializing }
PBTypeMessage class >> materializeFrom: aReadStream [
	^self basicNew
		readFrom: aReadStream.
]

{ #category : #'as yet unclassified' }
PBTypeMessage class >> resolveEncodingType [
	self slots do: #resolveEncodingType.
	fieldNumberToSlotMap := self buildFieldNumberToSlotMap.
]

{ #category : #'as yet unclassified' }
PBTypeMessage class >> unmarshalFrom: aByteArray [ 
	^self materializeFrom: aByteArray readStream
]

{ #category : #'as yet unclassified' }
PBTypeMessage >> materialize [
	^ByteArray streamContents: [:str |
		self materializeTo: (PBWireEncoder on: str)].
]

{ #category : #'as yet unclassified' }
PBTypeMessage >> materializeTo: aStream [
	self class slots do: [:each |
		each materialize: self to: aStream]
]

{ #category : #'as yet unclassified' }
PBTypeMessage >> readFrom: aReadStream [ 
	| decoder slotDict |
	"Get a map from fieldNumber to Slot."
	slotDict := self class fieldNumberToSlotMap.
	
	"Begin to decode."
	decoder := PBWireDecoder on: aReadStream.
	
	"Read until the stream is empty"
	[ aReadStream atEnd ] whileFalse: [
		decoder nextFieldDo: [:field :value |
			slotDict at: field
				ifPresent: [:slot | slot decodeFrom: value to: self]
				]].
	self flag: #todo. "Check if all non-optional are set?"
]
