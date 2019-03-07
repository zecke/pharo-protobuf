Class {
	#name : #PBTypeString,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeString class >> unmarshalFrom: aByteArray [
	^aByteArray utf8Decoded
]
