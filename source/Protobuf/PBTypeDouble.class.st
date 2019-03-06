Class {
	#name : #PBTypeDouble,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeDouble class >> marshal: aValue to: anEncoder with: aSlot [
	| data |
	data := ByteArray new: 8.
	data doubleAt: 1 put: aValue bigEndian: false. 
	anEncoder nextPut64Bit: data field: aSlot fieldNumber.
]

{ #category : #'as yet unclassified' }
PBTypeDouble class >> unmarshalFrom: aByteArray [
	^aByteArray doubleAt: 1 bigEndian: false
]
