Class {
	#name : #GBPEnumValueDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#number => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'number\'; fieldNumber: 2; beOptional)'
	],
	#category : #'Protobuf-Definitions'
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
