Class {
	#name : #GBPDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#field => ((PBPropertySlot with: #GBPFieldDescriptorProto) fieldName: \'field\'; fieldNumber: 2; beRepeated)',
		'#nested_type => ((PBPropertySlot with: #GBPDescriptorProto) fieldName: \'nested_type\'; fieldNumber: 3; beRepeated)',
		'#enum_type => ((PBPropertySlot with: #GBPEnumDescriptorProto) fieldName: \'enum_type\'; fieldNumber: 4; beRepeated)',
		'#extension_range => ((PBPropertySlot with: #GBPDescriptorProto_ExtensionRange) fieldName: \'extension_range\'; fieldNumber: 5; beRepeated)',
		'#extension => ((PBPropertySlot with: #GBPFieldDescriptorProto) fieldName: \'extension\'; fieldNumber: 6; beRepeated)',
		'#reserved_range => ((PBPropertySlot with: #GBPDescriptorProto_ReservedRange) fieldName: \'reserved_range\'; fieldNumber: 9; beRepeated)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GBPDescriptorProto >> add_enum_type: anObject [
	self enum_types add: anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> add_extension: anObject [
	self extensions add: anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> add_extension_range: anObject [
	self extension_ranges add: anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> add_field: anObject [
	self fields add: anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> add_nested_type: anObject [
	self nested_types add: anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> add_reserved_range: anObject [
	self reserved_ranges add: anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> enum_types [
	 ^enum_type ifNil: [ enum_type := OrderedCollection new ]
]

{ #category : #accessing }
GBPDescriptorProto >> extension_ranges [
	 ^extension_range ifNil: [ extension_range := OrderedCollection new ]
]

{ #category : #accessing }
GBPDescriptorProto >> extensions [
	 ^extension ifNil: [ extension := OrderedCollection new ]
]

{ #category : #accessing }
GBPDescriptorProto >> fields [
	 ^field ifNil: [ field := OrderedCollection new ]
]

{ #category : #accessing }
GBPDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GBPDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> nested_types [
	 ^nested_type ifNil: [ nested_type := OrderedCollection new ]
]

{ #category : #accessing }
GBPDescriptorProto >> reserved_ranges [
	 ^reserved_range ifNil: [ reserved_range := OrderedCollection new ]
]
