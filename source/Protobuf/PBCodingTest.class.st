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
PBCodingTest >> testEncoding [
	| message |
	message := PBTestMessage new.
	message color: PBTestEnumColor BLUE.

	self assert: message materialize equals: #[8 2]
]
