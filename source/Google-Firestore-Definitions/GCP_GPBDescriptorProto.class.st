Class {
	#name : #'GCP_GPBDescriptorProto',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#field => ((PBPropertySlot with: #GCP_GPBFieldDescriptorProto) fieldName: \'field\'; fieldNumber: 2; beRepeated; jsonFieldName: \'field\')',
		'#nested_type => ((PBPropertySlot with: #GCP_GPBDescriptorProto) fieldName: \'nested_type\'; fieldNumber: 3; beRepeated; jsonFieldName: \'nestedType\')',
		'#enum_type => ((PBPropertySlot with: #GCP_GPBEnumDescriptorProto) fieldName: \'enum_type\'; fieldNumber: 4; beRepeated; jsonFieldName: \'enumType\')',
		'#extension_range => ((PBPropertySlot with: #GCP_GPBDescriptorProto_ExtensionRange) fieldName: \'extension_range\'; fieldNumber: 5; beRepeated; jsonFieldName: \'extensionRange\')',
		'#extension => ((PBPropertySlot with: #GCP_GPBFieldDescriptorProto) fieldName: \'extension\'; fieldNumber: 6; beRepeated; jsonFieldName: \'extension\')',
		'#options => ((PBPropertySlot with: #GCP_GPBMessageOptions) fieldName: \'options\'; fieldNumber: 7; beOptional; jsonFieldName: \'options\')',
		'#oneof_decl => ((PBPropertySlot with: #GCP_GPBOneofDescriptorProto) fieldName: \'oneof_decl\'; fieldNumber: 8; beRepeated; jsonFieldName: \'oneofDecl\')',
		'#reserved_range => ((PBPropertySlot with: #GCP_GPBDescriptorProto_ReservedRange) fieldName: \'reserved_range\'; fieldNumber: 9; beRepeated; jsonFieldName: \'reservedRange\')',
		'#reserved_name => ((PBPropertySlot with: #PBTypeString) fieldName: \'reserved_name\'; fieldNumber: 10; beRepeated; jsonFieldName: \'reservedName\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBDescriptorProto >> add_enum_type: anObject [
	self enum_types add: anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> add_extension: anObject [
	self extensions add: anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> add_extension_range: anObject [
	self extension_ranges add: anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> add_field: anObject [
	self fields add: anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> add_nested_type: anObject [
	self nested_types add: anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> add_oneof_decl: anObject [
	self oneof_decls add: anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> add_reserved_name: anObject [
	self reserved_names add: anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> add_reserved_range: anObject [
	self reserved_ranges add: anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> enum_types [
	 ^enum_type ifNil: [ enum_type := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> extension_ranges [
	 ^extension_range ifNil: [ extension_range := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> extensions [
	 ^extension ifNil: [ extension := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> fields [
	 ^field ifNil: [ field := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> nested_types [
	 ^nested_type ifNil: [ nested_type := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> oneof_decls [
	 ^oneof_decl ifNil: [ oneof_decl := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> reserved_names [
	 ^reserved_name ifNil: [ reserved_name := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBDescriptorProto >> reserved_ranges [
	 ^reserved_range ifNil: [ reserved_range := OrderedCollection new ]
]
