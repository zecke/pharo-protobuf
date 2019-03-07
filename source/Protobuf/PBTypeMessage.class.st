Class {
	#name : #PBTypeMessage,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeMessage class >> fieldNumberToSlotMap [
	self flag: #todo. "Memoize this somehow in the class?"
	^ self slots inject: Dictionary new into: [:dict :slot |
		dict at: slot fieldNumber put: slot.
		dict.
	]
]

{ #category : #materializing }
PBTypeMessage class >> materializeFrom: aReadStream [
	^self basicNew
		initializeDefaults;
		readFrom: aReadStream.
]

{ #category : #'as yet unclassified' }
PBTypeMessage class >> unmarshalFrom: aByteArray [ 
	^self materializeFrom: aByteArray readStream
]

{ #category : #'as yet unclassified' }
PBTypeMessage >> initializeDefaults [
	self flag: #todo. "TODO(zecke): Initialize these based on the slots."
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
