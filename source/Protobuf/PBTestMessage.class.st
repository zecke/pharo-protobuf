Class {
	#name : #PBTestMessage,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#color => (PBTestEnumColor asSlot fieldName: \'color\'; fieldNumber: 1)',
		'#dont_set => (PBTypeInt32 asSlot fieldName: \'dont_set\'; fieldNumber: 2; beOptional)',
		'#other_colors => (PBTypeDouble asSlot fieldName: \'other_colors\'; fieldNumber: 3; beRepeated)'
	],
	#category : #'Protobuf-Tests'
}

{ #category : #accessing }
PBTestMessage >> addOtherColor: aColor [
	self flag: #todo. "TODO(zecke): Make the code generator generate this..."
	self otherColors add: aColor.
]

{ #category : #accessing }
PBTestMessage >> color [
	 ^color
]

{ #category : #accessing }
PBTestMessage >> color: anObject [
	color:= anObject.
]

{ #category : #accessing }
PBTestMessage >> dont_set [
	 ^dont_set
]

{ #category : #accessing }
PBTestMessage >> dont_set: anObject [
	dont_set:= anObject.
]

{ #category : #accessing }
PBTestMessage >> otherColors [
	self flag: #TODO. "Get this auto generated. PBPropertySlot should compile these instead of the base class."
	 ^other_colors ifNil: [ other_colors := OrderedCollection new ]
]

{ #category : #accessing }
PBTestMessage >> other_colors [
	 ^other_colors
]

{ #category : #accessing }
PBTestMessage >> other_colors: anObject [
	other_colors:= anObject.
]
