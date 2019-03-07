Class {
	#name : #GBPEnumValueDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => (PBTypeString asSlot fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#number => (PBTypeInt32 asSlot fieldName: \'number\'; fieldNumber: 2; beOptional)'
	],
	#category : #'Protobuf-Compiler-Definitions'
}

{ #category : #accessing }
GBPEnumValueDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GBPEnumValueDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GBPEnumValueDescriptorProto >> number [
	 ^number
]

{ #category : #accessing }
GBPEnumValueDescriptorProto >> number: anObject [
	number:= anObject.
]
