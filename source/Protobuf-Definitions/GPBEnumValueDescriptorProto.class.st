Class {
	#name : #GPBEnumValueDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#number => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'number\'; fieldNumber: 2; beOptional; jsonFieldName: \'number\')',
		'#options => ((PBPropertySlot with: #GPBEnumValueOptions) fieldName: \'options\'; fieldNumber: 3; beOptional; jsonFieldName: \'options\')'
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

{ #category : #accessing }
GPBEnumValueDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GPBEnumValueDescriptorProto >> options: anObject [
	options:= anObject.
]
