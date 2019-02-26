"
My subclasses represent the valid types of a protobuf. They need to implement validation. Depending on the usage the validation can be found on the class or instance side. In case of Enum/Message you will need to find it on the instance (as there are many different of them).

For convenience I can point to the underlying wiretype.
"
Class {
	#name : #PBTypeName,
	#superclass : #Object,
	#category : #'Protobuf-Slots'
}

{ #category : #converting }
PBTypeName class >> asSlot [
	^PBPropertySlot new
		encodingType: self;
		yourself
]

{ #category : #'as yet unclassified' }
PBTypeName class >> validate: anInstance [
	(self doValidate: anInstance) ifFalse: [ PBTypeInvalidError signal: 'Type not valid' ]
]

{ #category : #'as yet unclassified' }
PBTypeName >> marshalProtobuf [
	self shouldBeImplemented.
]
