Class {
	#name : #GPBEnumDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#value => ((PBPropertySlot with: #GPBEnumValueDescriptorProto) fieldName: \'value\'; fieldNumber: 2; beRepeated)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBEnumDescriptorProto >> add_value: anObject [
	self values add: anObject.
]

{ #category : #accessing }
GPBEnumDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GPBEnumDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GPBEnumDescriptorProto >> values [
	 ^value ifNil: [ value := OrderedCollection new ]
]
