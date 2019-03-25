Class {
	#name : #GPBEnumValueDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#number => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'number\'; fieldNumber: 2; beOptional)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBEnumValueDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GPBEnumValueDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GPBEnumValueDescriptorProto >> number [
	 ^number
]

{ #category : #accessing }
GPBEnumValueDescriptorProto >> number: anObject [
	number:= anObject.
]
