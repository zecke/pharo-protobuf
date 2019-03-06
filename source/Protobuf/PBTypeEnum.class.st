Class {
	#name : #PBTypeEnum,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeEnum class >> unmarshalFrom: anInteger [ 
	self flag: #todo. "TODO(holgerf): Do input validation and if this value is valid?"
	^anInteger
]
