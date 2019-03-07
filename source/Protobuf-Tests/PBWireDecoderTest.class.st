Class {
	#name : #PBWireDecoderTest,
	#superclass : #TestCase,
	#category : #'Protobuf-Tests'
}

{ #category : #'as yet unclassified' }
PBWireDecoderTest >> parse: aByteArray [ 
	^PBWireDecoder on: aByteArray readStream
]

{ #category : #tests }
PBWireDecoderTest >> testSample_embeddedMessage [
	self assert: (self parse: #[16r1a 16r03 16r08 16r96 16r01]) nextField equals: 3->#[16r08 16r96 16r01].
]

{ #category : #tests }
PBWireDecoderTest >> testSample_int32 [
	self assert: (self parse: #[16r08 16r96 16r01]) nextInteger equals: 150.
]

{ #category : #tests }
PBWireDecoderTest >> testSample_string [
	self assert: (self parse: #[16r12 16r07 16r74 16r65 16r73 16r74 16r69 16r6e 16r67]) nextString equals: 'testing'.
]

{ #category : #tests }
PBWireDecoderTest >> testSample_variant_300 [
	self assert: (self parse: #[2r10101100 2r00000010]) nextVarInt equals: 300.
]

{ #category : #accessing }
PBWireDecoderTest >> testWire [
	"The examples from the documentation:
			https://developers.google.com/protocol-buffers/docs/encoding
		...note that they are in hex."

	| bytes |
	"Just read the first varint, should be 8 (the key) and ignore 96 01"
	self
		assert: (PBWireDecoder on: #[16r08 16r96 16r01] readStream) nextVarInt
		equals: 8.
	self
		assert: (PBWireDecoder on: #[2r10101100 2r00000010] readStream) nextVarInt
		equals: 300.
	(PBWireDecoder on: #[16r08 16r96 16r01] readStream)
		nextFieldDo: [ :field :value | 
			self assert: field equals: 1.
			self assert: value equals: 150 ].

	"Test simple string"
	bytes := #[16r12 16r07] , (ZnUTF8Encoder new encodeString: 'testing').
	(PBWireDecoder on: bytes readStream)
		nextFieldDo: [ :field :value | 
			"Test 32 bit integer"
			self assert: field equals: 2.
			self
				assert: (ZnUTF8Encoder new decodeBytes: value)
				equals: 'testing' ]
]

{ #category : #'as yet unclassified' }
PBWireDecoderTest >> testZigZag [
	"The table from the documentation:
			https://developers.google.com/protocol-buffers/docs/encoding"

	| pb |
	pb := PBWireDecoder new.
	self assert: (pb varIntToSint: 0) equals: 0.
	self assert: (pb varIntToSint: 1) equals: -1.
	self assert: (pb varIntToSint: 2) equals: 1.
	self assert: (pb varIntToSint: 3) equals: -2.
	self assert: (pb varIntToSint: 4) equals: 2.
	self assert: (pb varIntToSint: 4294967294) equals: 2147483647.
	self assert: (pb varIntToSint: 4294967295) equals: -2147483648.
	"And to 64 bit max min"
	self assert: (pb varIntToSint: 18446744073709551614) equals: 9223372036854775807.
	self assert: (pb varIntToSint: 18446744073709551615) equals: -9223372036854775808.
]
