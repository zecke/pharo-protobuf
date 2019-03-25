Class {
	#name : #GPBEnumDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#value => ((PBPropertySlot with: #GPBEnumValueDescriptorProto) fieldName: \'value\'; fieldNumber: 2; beRepeated; jsonFieldName: \'value\')',
		'#options => ((PBPropertySlot with: #GPBEnumOptions) fieldName: \'options\'; fieldNumber: 3; beOptional; jsonFieldName: \'options\')',
		'#reserved_range => ((PBPropertySlot with: #GPBEnumDescriptorProto_EnumReservedRange) fieldName: \'reserved_range\'; fieldNumber: 4; beRepeated; jsonFieldName: \'reservedRange\')',
		'#reserved_name => ((PBPropertySlot with: #PBTypeString) fieldName: \'reserved_name\'; fieldNumber: 5; beRepeated; jsonFieldName: \'reservedName\')'
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
