Class {
	#name : #PBWireEncoder,
	#superclass : #PBProtobuf,
	#category : #Protobuf
}

{ #category : #'instance creation' }
PBWireEncoder class >> on: aStream [

	^self new stream: aStream; yourself
]

{ #category : #'writing-wiretypes' }
PBWireEncoder >> nextPut32Bit: array [
	"Put 32 bits."

	^stream nextPutAll: array
]

{ #category : #writing }
PBWireEncoder >> nextPut32Bit: array field: fieldNumber [
	"Write a 32 bit field."

	| key |
	key := (fieldNumber << 3) bitOr: Wire32Bit.
	self nextPutAll: (self varIntToByteArray: key).
	self nextPut32Bit: array
]

{ #category : #'writing-wiretypes' }
PBWireEncoder >> nextPut64Bit: array [
	"Put 64 bits."

	^stream nextPutAll: array
]

{ #category : #writing }
PBWireEncoder >> nextPut64Bit: array field: fieldNumber [
	"Write a 64 bit field."

	| key |
	key := (fieldNumber << 3) bitOr: Wire64Bit.
	self nextPutAll: (self varIntToByteArray: key).
	self nextPut64Bit: array
]

{ #category : #'writing-types' }
PBWireEncoder >> nextPut: object field: fieldNumber [
	"Write an object as embedded."

	| key bytes |
	key := (fieldNumber << 3) bitOr: WireLengthDelimited.
	self nextPutAll: (self varIntToByteArray: key).
	bytes := ByteArray streamContents: [:s | object writeOn: s].
	self nextPutByteArray: bytes
]

{ #category : #'as yet unclassified' }
PBWireEncoder >> nextPutAll: anArray [
	^stream nextPutAll: anArray 

]

{ #category : #'writing-wiretypes' }
PBWireEncoder >> nextPutByteArray: array [
	"Write length delimited byte array.
	Used for string, bytes, embedded messages, packed repeated fields.
	Write length first as varint, then bytes."

	stream
		nextPutAll: (self varIntToByteArray: array size);
		nextPutAll: array
]

{ #category : #writing }
PBWireEncoder >> nextPutByteArray: array field: fieldNumber [
	"Write a length delimited field."

	| key |
	key := (fieldNumber << 3) bitOr: WireLengthDelimited.
	self nextPutAll: (self varIntToByteArray: key).
	self nextPutByteArray: array
]

{ #category : #'writing-types' }
PBWireEncoder >> nextPutString: string field: fieldNumber [
	"Write a length delimited string."

	| key |
	key := (fieldNumber << 3) bitOr: WireLengthDelimited.
	self nextPutAll: (self varIntToByteArray: key).
	self nextPutByteArray: string asByteArray
]

{ #category : #'writing-wiretypes' }
PBWireEncoder >> nextPutVarInt: integer [
	"Write a var int. Used for int32, int64, uint32, uint64, sint32, sint64, bool, enum"
	
	stream nextPutAll: (self varIntToByteArray: integer)
]

{ #category : #writing }
PBWireEncoder >> nextPutVarInt: integer field: fieldNumber [
	"Write a varint field."

	| key |
	key := (fieldNumber << 3) bitOr: WireVarInt.
	self nextPutAll: (self varIntToByteArray: key).
	self nextPutVarInt: integer
]
