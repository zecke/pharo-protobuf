Class {
	#name : #PBTypeInt32,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeInt32 class >> marshal: anInteger to: anEncoder with: aSlot [ 
	anEncoder nextPutVarInt: anInteger field: aSlot fieldNumber.
]

{ #category : #'as yet unclassified' }
PBTypeInt32 class >> unmarshalFrom: anInteger [ 
	^anInteger
]
