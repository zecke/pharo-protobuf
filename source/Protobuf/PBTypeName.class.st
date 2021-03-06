"
My subclasses represent the valid types of a protobuf. They need to implement validation. Depending on the usage the validation can be found on the class or instance side. In case of Enum/Message you will need to find it on the instance (as there are many different of them).

For convenience I can point to the underlying wiretype.
"
Class {
	#name : #PBTypeName,
	#superclass : #Object,
	#category : #'Protobuf-Slots'
}

{ #category : #'as yet unclassified' }
PBTypeName class >> decodeFrom: aValue instVarIndex: anIndex to: anInstance [ 
	thisContext object: anInstance instVarAt: anIndex put: (self unmarshalFrom: aValue).
]

{ #category : #'as yet unclassified' }
PBTypeName class >> installingIn: aClass for: aSlot [ 
	| reader writer | 
	
	reader := String streamContents: [ :str |
		str 
			nextPutAll: aSlot pharoFieldName;
			cr;tab;
			nextPutAll: ' ^';
			nextPutAll: aSlot pharoFieldName.
		aSlot hasDefaultValue ifTrue: [
			str
				nextPutAll: ' ifNil: [';
				nextPutAll: (aSlot baseType defaultValueForInitializeCode: aSlot);
				nextPutAll: ']']].
	writer := String streamContents: [ :str |
		str 
			nextPutAll: aSlot pharoFieldName;
			nextPutAll: ': anObject';
			cr;tab;
			nextPutAll: aSlot pharoFieldName;
			nextPutAll: ':= anObject.'.
		].
	aClass compile: reader classified: 'accessing'.
	aClass compile: writer classified: 'accessing'.
]

{ #category : #converting }
PBTypeName class >> resolveEncodingType [
	"nothing"
]

{ #category : #'as yet unclassified' }
PBTypeName class >> typeName [
	^self name
]

{ #category : #'as yet unclassified' }
PBTypeName class >> validate: anInstance [
	(self doValidate: anInstance) ifFalse: [ PBTypeInvalidError signal: 'Type not valid' ]
]
