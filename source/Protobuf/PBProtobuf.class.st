"
See PBProtobuf class>>initialize for wiretypes.

Some interesting comments from the net:

fixed32 and fixed64 are unsigned integers encoded directly as 4 or 8 bytes on the wire, in little-endian order.  sfixed32 and sfixed64 are the same, but signed -- negative numbers just use two's complement.  ZigZag encoding is explicitly designed for use with varint-encoded values, so it doesn't make sense to use it here.  Sorry about the naming; it's the result of gradual evolution.  Proto1 only had fixed32 and fixed64, which were unsigned from the start.  The ""sfixed"" variants were added in proto2.

Groups are *not* encoded like nested messages.  Nested messages are encoded as a length followed by the message contents (the ""length-delimited"" wire type).  Groups are encoded as a start-group tag, followed by the message contents, followed by an end-group tag.

Groups are still used by many protocols inside Google, so all implementations of protobufs that we use internally had to support them.  It's possible that some of these protocols will be exposed publicly at some point (though I don't know of any specific examples), which would mean that external implementations need to support them too.  However, any *new* protocols should definitely not use them.  It's probably safe to not implement them for now, although you should at least recognize the wire type and be able to ignore groups seen on the wire, for forwards-compatibility.
"
Class {
	#name : #PBProtobuf,
	#superclass : #Object,
	#instVars : [
		'buffer',
		'stream'
	],
	#classVars : [
		'Wire32Bit',
		'Wire64Bit',
		'WireEndGroup',
		'WireLengthDelimited',
		'WireStartGroup',
		'WireVarInt'
	],
	#category : #Protobuf
}

{ #category : #'class initialization' }
PBProtobuf class >> initialize [
	"self initialize"
	
	"The available wire types are as follows:

	Type	Meaning	Used For
	0	Varint	int32, int64, uint32, uint64, sint32, sint64, bool, enum
	1	64-bit	fixed64, sfixed64, double
	2	Length-delimited	string, bytes, embedded messages, packed repeated fields
	3	Start group	groups (deprecated)
	4	End group	groups (deprecated)
	5	32-bit	fixed32, sfixed32, float"

	WireVarInt := 0.
	Wire64Bit := 1.
	WireLengthDelimited := 2.
	WireStartGroup := 3.
	WireEndGroup := 4.
	Wire32Bit := 5.
	
]

{ #category : #converting }
PBProtobuf >> byteArrayToDouble: array [
	"Convert ByteArray to Double."

	^array doubleAt: 1 bigEndian: false
]

{ #category : #converting }
PBProtobuf >> byteArrayToFloat: array [
	"Convert ByteArray to Float."

	^array floatAt: 1 bigEndian: false
]

{ #category : #converting }
PBProtobuf >> byteArrayToLong: array [
	"Convert ByteArray to long (sfixed32)."

	^array longAt: 1 bigEndian: false
]

{ #category : #converting }
PBProtobuf >> byteArrayToLongLong: array [
	"Convert ByteArray to long long (sfixed64)."

	^array longLongAt: 1 bigEndian: false
]

{ #category : #converting }
PBProtobuf >> byteArrayToUnsignedLong: array [
	"Convert ByteArray to unsigned long (fixed32)."

	^array unsignedLongAt: 1 bigEndian: false
]

{ #category : #converting }
PBProtobuf >> byteArrayToUnsignedLongLong: array [
	"Convert ByteArray to unsigned long long (fixed64)."

	^array unsignedLongLongAt: 1 bigEndian: false
]

{ #category : #'initialization-release' }
PBProtobuf >> initialize [

	buffer := ByteArray new: 8
]

{ #category : #converting }
PBProtobuf >> sint32ToVarInt: integer [
	"Convert to zig zag encoded sint32."
	"(n << 1) ^ (n >> 31)"

	^(integer << 1) bitXor: (integer >> 31)
]

{ #category : #converting }
PBProtobuf >> sint64ToVarInt: integer [
	"Convert to zig zag encoded sint64."
	"(n << 1) ^ (n >> 63)"

	^(integer << 1) bitXor: (integer >> 63)
]

{ #category : #accessing }
PBProtobuf >> stream [
	
	^ stream
]

{ #category : #accessing }
PBProtobuf >> stream: anObject [
	
	stream := anObject
]

{ #category : #converting }
PBProtobuf >> varIntToByteArray: integer [
	"Produce a varint ByteArray from integer.
	Take 7 lowest bits, if there is more after that, then set MSB,
	write the byte and continue. Otherwise write the byte without MSB set."

	| int |
	int := integer.
	^ByteArray streamContents: [ :s | | byte |
		[ byte := int bitAnd: 127. "lowest 7 bits"
		int := int >> 7.
		int > 0 ]
			whileTrue: [
				s nextPut: (byte bitOr: 128) ].
		s nextPut: byte ]
]

{ #category : #converting }
PBProtobuf >> varIntToSint: integer [
	"Read next field as a zig zag encoded sint32 (or sint64)."

	^(integer >> 1) bitXor: (integer bitAnd: 1) negated
]
