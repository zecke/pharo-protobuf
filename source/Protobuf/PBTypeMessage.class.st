Class {
	#name : #PBTypeMessage,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeMessage class >> fieldNumberToSlotMap [
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
PBTypeMessage >> initializeDefaults [
	"TODO(zecke): Initialize these based on the slots."
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
			slotDict at: field ifPresent: [:slot |
				slot decodeFrom: value to: self]]].
]
