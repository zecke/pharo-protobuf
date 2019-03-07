Class {
	#name : #PBWireEncoderTest,
	#superclass : #TestCase,
	#instVars : [
		'pb',
		'stream'
	],
	#category : #'Protobuf-Tests'
}

{ #category : #'as yet unclassified' }
PBWireEncoderTest >> parse: aByteArray [ 
	^PBWireDecoder on: aByteArray readStream
]

{ #category : #running }
PBWireEncoderTest >> setUp [
	super setUp.
	stream := WriteStream on: ByteArray new.
	pb := PBWireEncoder on: stream.
]

{ #category : #tests }
PBWireEncoderTest >> testSample_embeddedMessage [
	pb nextPutString: #[16r08 16r96 16r01] field: 3.
	self assert: stream contents equals: #[16r1a 16r03 16r08 16r96 16r01].
]

{ #category : #tests }
PBWireEncoderTest >> testSample_int32 [
	pb nextPutVarInt: 150 field: 1.
	self assert: stream contents equals: #[16r08 16r96 16r01].
]

{ #category : #tests }
PBWireEncoderTest >> testSample_string [
	pb nextPutString: 'testing' field: 2.
	self assert: stream contents  equals: #[16r12 16r07 16r74 16r65 16r73 16r74 16r69 16r6e 16r67].
]

{ #category : #tests }
PBWireEncoderTest >> testSample_variant_300 [
	pb nextPutVarInt: 300.
	self assert: stream contents equals: #[2r10101100 2r00000010]
]

{ #category : #'as yet unclassified' }
PBWireEncoderTest >> testZigZag [
	"The table from the documentation:
			https://developers.google.com/protocol-buffers/docs/encoding"

	self assert: (pb sint32ToVarInt: 0) equals: 0.
	self assert: (pb sint32ToVarInt: -1) equals: 1.
	self assert: (pb sint32ToVarInt: 1) equals: 2.
	self assert: (pb sint32ToVarInt: -2) equals: 3.
	self assert: (pb sint32ToVarInt: 2) equals: 4.
	self assert: (pb sint32ToVarInt: 2147483647) equals: 4294967294.
	self assert: (pb sint32ToVarInt: -2147483648) equals: 4294967295.
	"And to 64 bit max min"
	self assert: (pb sint64ToVarInt: 9223372036854775807) equals: 18446744073709551614.
	self assert: (pb sint64ToVarInt: -9223372036854775808) equals: 18446744073709551615.
]
