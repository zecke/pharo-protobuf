Class {
	#name : #PBWireDecoder,
	#superclass : #PBProtobuf,
	#category : #Protobuf
}

{ #category : #'instance creation' }
PBWireDecoder class >> on: aStream [

	^self new stream: aStream; yourself
]

{ #category : #testing }
PBWireDecoder >> atEnd [
	"End of input?"

	^stream atEnd
]

{ #category : #'reading-wiretypes' }
PBWireDecoder >> next32Bit [
	"Return 32 bits. Used for fixed32, sfixed32, float"

	^stream next: 4
]

{ #category : #'reading-wiretypes' }
PBWireDecoder >> next64Bit [
	"Return 64 bits. Used for fixed64, sfixed64, double"

	^stream next: 8
]

{ #category : #'reading-wiretypes' }
PBWireDecoder >> nextByteArray [
	"Length delimited byte array.
	Used for string, bytes, embedded messages, packed repeated fields.
	Read length first, then read and return that number of bytes."

	^stream next:  self nextVarInt
]

{ #category : #'reading-types' }
PBWireDecoder >> nextDouble [
	"Read next field as a double."

	self nextDoubleDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextDoubleDo: aBlock [
	"Read next field as a double."

	self nextFieldDo: [:field :value |
		^ aBlock value: field value: (self byteArrayToDouble: value)]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextEmbeddedDo: aBlock [
	"Read next field as an embedded message.
	Block will be executed with field and a new decoder as value."

	self nextFieldDo: [:field :value |
		^ aBlock
			value: field
			value: (PBWireDecoder on: value readStream)]
]

{ #category : #'reading-fields' }
PBWireDecoder >> nextField [
	"Return the next fieldNumber wireValue pair as an Association."

	self nextFieldDo: [ :field :value | ^field -> value]
]

{ #category : #'reading-fields' }
PBWireDecoder >> nextFieldDo: aBlock [
	"Execute aBlock with next fieldNumber and wireValue."

	| value fieldNumber wireType key |
	key := self nextVarInt.
	wireType := key bitAnd: 7.
	fieldNumber := key bitShift: -3.
	value := self nextValueOfWireType: wireType.
	^aBlock value: fieldNumber value: value
]

{ #category : #'reading-types' }
PBWireDecoder >> nextFloat [
	"Read next field as a float."

	self nextFloatDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextFloatDo: aBlock [
	"Read next field as a float."

	self nextFieldDo: [:field :value |
		^ aBlock value: field value: (self byteArrayToFloat: value)]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextInteger [
	"Read next field as an integer (int32, int64, uint32, uint64)
	which means no conversion from varInt."

	self nextIntegerDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextIntegerDo: aBlock [
	"Read next field as an integer (int32, int64, uint32, uint64)
	which means no conversion from varInt."

	^self nextFieldDo: aBlock
]

{ #category : #'reading-types' }
PBWireDecoder >> nextLong [
	"Read next field as a sfixed32."

	self nextLongDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextLongDo: aBlock [
	"Read next field as a sfixed32."

	self nextFieldDo: [:field :value |
		^ aBlock value: field value: (self byteArrayToLong: value)]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextLongLong [
	"Read next field as a sfixed64."

	self nextLongLongDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextLongLongDo: aBlock [
	"Read next field as a sfixed64."

	self nextFieldDo: [:field :value |
		^ aBlock value: field value: (self byteArrayToLongLong: value)]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextPackedDo: aBlock [
	"Read next field as a packed repeated field.
	Block will be executed with field number and
	a new decoder as value - note that the content
	must then be further read using only one of:
		nextVarInt
		next32Bit
		next64Bit"

	^self nextEmbeddedDo: aBlock
]

{ #category : #'reading-types' }
PBWireDecoder >> nextSignedInteger [
	"Read next field as a zig zag encoded sint32, sint64."

	self nextSignedIntegerDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextSignedIntegerDo: aBlock [
	"Read next field as a zig zag encoded sint32, sint64."

	self nextFieldDo: [:field :value |
		^ aBlock value: field value: (self varIntToSint: value)]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextString [
	"Read next field as string."

	self nextStringDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextStringDo: aBlock [
	"Read next field as string."

	self nextFieldDo: [:field :value |
		^ aBlock value: field value: value asString]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextUnsignedLong [
	"Read next field as a fixed32."

	self nextUnsignedLongDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextUnsignedLongDo: aBlock [
	"Read next field as a fixed32."

	self nextFieldDo: [:field :value |
		^ aBlock value: field value: (self byteArrayToUnsignedLong: value)]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextUnsignedLongLong [
	"Read next field as a fixed64."

	self nextUnsignedLongLongDo: [:field :value | ^value ]
]

{ #category : #'reading-types' }
PBWireDecoder >> nextUnsignedLongLongDo: aBlock [
	"Read next field as a fixed64."

	self nextFieldDo: [:field :value |
		^ aBlock value: field value: (self byteArrayToUnsignedLongLong: value)]
]

{ #category : #private }
PBWireDecoder >> nextValueOfWireType: aWireType [
	"This method can only distinguish the wiretypes
	so the receiver will have to know the exact type
	to convert to."

	"Ok, so sometimes a regular switch could be nice.
	Having blocks in an Array didn't feel that nice either.
	Which is fastest?"
	
	aWireType = WireVarInt ifTrue: [ ^self nextVarInt ].
	aWireType = Wire64Bit ifTrue: [ ^self next64Bit ].
	aWireType = WireLengthDelimited ifTrue: [ ^self nextByteArray ].
	aWireType = Wire32Bit ifTrue: [ ^self next32Bit ].
	
	aWireType = WireStartGroup ifTrue: [ ^self error: 'WireStartGroup deprecated' ].
	aWireType = WireEndGroup ifTrue: [ ^self error: 'WireEndGroup deprecated' ].
	self error: 'Unknown wiretype: ', aWireType asString

]

{ #category : #'reading-wiretypes' }
PBWireDecoder >> nextVarInt [
	"Return a var int. Used for int32, int64, uint32, uint64, sint32, sint64, bool, enum
	
	As long as each MSB is set we keep
	reading bytes. Then we reverse concatenate the groups of 7 bits.
	The recursion makes it easy to reverse - without allocating a buffer."

	| byte |
	byte := stream next.
	(byte allMask: 128)
		ifTrue: [ ^(self nextVarInt << 7) bitOr: (byte bitAnd: 127) ]
		ifFalse: [ ^byte bitAnd: 127 ]
]
