Class {
	#name : #PBTypeBool,
	#superclass : #PBTypeName,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeBool class >> doValidate: anInstance [
	^anInstance | anInstance not
]
