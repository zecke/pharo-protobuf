Class {
	#name : #PBCodingTest,
	#superclass : #TestCase,
	#category : #'Protobuf-Tests'
}

{ #category : #tests }
PBCodingTest >> testDecoding [
	| message |
	message := PBTestMessage materializeFrom: #[8 2] readStream.
	self assert: message class equals: PBTestMessage.
	self assert: message color equals: PBTestEnumColor BLUE.
]

{ #category : #tests }
PBCodingTest >> testDecodingRepeated [
	| message |
	message := PBTestMessage materializeFrom: #[16r08 16r02 16r19 16r00 16r00 16r00 16r00 16r00 16r00 16r08 16r40 16r19 16r66 16r66 16r66 16r66 16r66 16r66 16r12 16r40] readStream.
	self assert: message class equals: PBTestMessage.
	self assert: message color equals: PBTestEnumColor BLUE.
	self assert: message other_colors equals: #(3.0 4.6) asOrderedCollection.
]

{ #category : #tests }
PBCodingTest >> testEncoding [
	| message |
	message := PBTestMessage new.
	message color: PBTestEnumColor BLUE.

	self assert: message materialize equals: #[8 2]
]

{ #category : #tests }
PBCodingTest >> testEncodingRepeated [
	| message |
	message := PBTestMessage new.
	message color: PBTestEnumColor BLUE.
	message addOtherColor: 3.0.
	message addOtherColor: 4.6.
	self assert: message materialize equals: #[16r08 16r02 16r19 16r00 16r00 16r00 16r00 16r00 16r00 16r08 16r40 16r19 16r66 16r66 16r66 16r66 16r66 16r66 16r12 16r40].
]
