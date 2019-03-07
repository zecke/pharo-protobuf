Class {
	#name : #GBPEnumDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => (PBTypeString asSlot fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#value => (GBPEnumValueDescriptorProto asSlot fieldName: \'value\'; fieldNumber: 2; beRepeated)'
	],
	#category : #'Protobuf-Compiler-Definitions'
}

{ #category : #accessing }
GBPEnumDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GBPEnumDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GBPEnumDescriptorProto >> value [
	 ^value
]

{ #category : #accessing }
GBPEnumDescriptorProto >> value: anObject [
	value:= anObject.
]
