Class {
	#name : #PBTypeBool,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeBool class >> defaultValueForInitializeCode: aSlot [ 
	^aSlot defaultValue
]

{ #category : #'as yet unclassified' }
PBTypeBool class >> doValidate: anInstance [
	^anInstance | anInstance not
]

{ #category : #'as yet unclassified' }
PBTypeBool class >> marshal: aBoolean to: anEncoder with: aSlot [
	anEncoder nextPutVarInt: aBoolean asBit field: aSlot fieldNumber.
]

{ #category : #'as yet unclassified' }
PBTypeBool class >> unmarshalFrom: anInteger [ 
	^anInteger > 0
]
