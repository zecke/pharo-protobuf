Class {
	#name : #PBTestMessage,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#color => (PBTestEnumColor asSlot fieldName: \'color\'; fieldNumber: 1)'
	],
	#category : #'Protobuf-Tests'
}

{ #category : #accessing }
PBTestMessage >> color [
	 ^color
]

{ #category : #accessing }
PBTestMessage >> color: anObject [
	color:= anObject.
]
