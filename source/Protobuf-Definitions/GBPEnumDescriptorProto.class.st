Class {
	#name : #GBPEnumDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#value => ((PBPropertySlot with: #GBPEnumValueDescriptorProto) fieldName: \'value\'; fieldNumber: 2; beRepeated)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GBPEnumDescriptorProto >> add_value: anObject [
	self values add: anObject.
]

{ #category : #accessing }
GBPEnumDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GBPEnumDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GBPEnumDescriptorProto >> values [
	 ^value ifNil: [ value := OrderedCollection new ]
]
