Class {
	#name : #PBTypeString,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeString class >> marshal: aString to: anEncoder with: aSlot [
	| data |
	data := aString utf8Encoded.
	anEncoder nextPutString: data field: aSlot fieldNumber.
]

{ #category : #'as yet unclassified' }
PBTypeString class >> unmarshalFrom: aByteArray [
	^aByteArray utf8Decoded
]
