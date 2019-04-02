Class {
	#name : #PBTypeFloat,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeFloat class >> unmarshalFrom: aByteArray [
	self flag: #todo. "Check the byte order"
	^aByteArray floatAt: 1 bigEndian: false
]
