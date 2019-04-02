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
GPBEnumDescriptorProto >> add_reserved_name: anObject [
	self reserved_names add: anObject.
]

{ #category : #accessing }
GPBEnumDescriptorProto >> add_reserved_range: anObject [
	self reserved_ranges add: anObject.
]

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
GPBEnumDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GPBEnumDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GPBEnumDescriptorProto >> reserved_names [
	 ^reserved_name ifNil: [ reserved_name := OrderedCollection new ]
]

{ #category : #accessing }
GPBEnumDescriptorProto >> reserved_ranges [
	 ^reserved_range ifNil: [ reserved_range := OrderedCollection new ]
]

{ #category : #accessing }
GPBEnumDescriptorProto >> values [
	 ^value ifNil: [ value := OrderedCollection new ]
]
