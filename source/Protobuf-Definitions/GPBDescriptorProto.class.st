Class {
	#name : #GPBDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#field => ((PBPropertySlot with: #GPBFieldDescriptorProto) fieldName: \'field\'; fieldNumber: 2; beRepeated)',
		'#nested_type => ((PBPropertySlot with: #GPBDescriptorProto) fieldName: \'nested_type\'; fieldNumber: 3; beRepeated)',
		'#enum_type => ((PBPropertySlot with: #GPBEnumDescriptorProto) fieldName: \'enum_type\'; fieldNumber: 4; beRepeated)',
		'#extension_range => ((PBPropertySlot with: #GPBDescriptorProto_ExtensionRange) fieldName: \'extension_range\'; fieldNumber: 5; beRepeated)',
		'#extension => ((PBPropertySlot with: #GPBFieldDescriptorProto) fieldName: \'extension\'; fieldNumber: 6; beRepeated)',
		'#reserved_range => ((PBPropertySlot with: #GPBDescriptorProto_ReservedRange) fieldName: \'reserved_range\'; fieldNumber: 9; beRepeated)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBDescriptorProto >> add_enum_type: anObject [
	self enum_types add: anObject.
]

{ #category : #accessing }
GPBDescriptorProto >> add_extension: anObject [
	self extensions add: anObject.
]

{ #category : #accessing }
GPBDescriptorProto >> add_extension_range: anObject [
	self extension_ranges add: anObject.
]

{ #category : #accessing }
GPBDescriptorProto >> add_field: anObject [
	self fields add: anObject.
]

{ #category : #accessing }
GPBDescriptorProto >> add_nested_type: anObject [
	self nested_types add: anObject.
]

{ #category : #accessing }
GPBDescriptorProto >> add_reserved_range: anObject [
	self reserved_ranges add: anObject.
]

{ #category : #accessing }
GPBDescriptorProto >> enum_types [
	 ^enum_type ifNil: [ enum_type := OrderedCollection new ]
]

{ #category : #accessing }
GPBDescriptorProto >> extension_ranges [
	 ^extension_range ifNil: [ extension_range := OrderedCollection new ]
]

{ #category : #accessing }
GPBDescriptorProto >> extensions [
	 ^extension ifNil: [ extension := OrderedCollection new ]
]

{ #category : #accessing }
GPBDescriptorProto >> fields [
	 ^field ifNil: [ field := OrderedCollection new ]
]

{ #category : #accessing }
GPBDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GPBDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GPBDescriptorProto >> nested_types [
	 ^nested_type ifNil: [ nested_type := OrderedCollection new ]
]

{ #category : #accessing }
GPBDescriptorProto >> reserved_ranges [
	 ^reserved_range ifNil: [ reserved_range := OrderedCollection new ]
]
