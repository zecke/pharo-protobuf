Class {
	#name : #GBPDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => (PBTypeString asSlot fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#field => (GBPFieldDescriptorProto asSlot fieldName: \'field\'; fieldNumber: 2; beRepeated)',
		'#extension => (GBPFieldDescriptorProto asSlot fieldName: \'extension\'; fieldNumber: 3; beRepeated)',
		'#enum_type => (GBPEnumDescriptorProto asSlot fieldName: \'enum_type\'; fieldNumber: 4; beRepeated)',
		'#extension_range => (GBPDescriptorProto_ExtensionRange asSlot fieldName: \'extension_range\'; fieldNumber: 5; beRepeated)',
		'#reserved_range => (GBPDescriptorProto_ReservedRange asSlot fieldName: \'reserved_range\'; fieldNumber: 9; beRepeated)'
	],
	#category : #'Protobuf-Compiler-Definitions'
}

{ #category : #accessing }
GBPDescriptorProto >> enum_type [
	 ^enum_type
]

{ #category : #accessing }
GBPDescriptorProto >> enum_type: anObject [
	enum_type:= anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> extension [
	 ^extension
]

{ #category : #accessing }
GBPDescriptorProto >> extension: anObject [
	extension:= anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> extension_range [
	 ^extension_range
]

{ #category : #accessing }
GBPDescriptorProto >> extension_range: anObject [
	extension_range:= anObject.
]

{ #category : #accessing }
GBPDescriptorProto >> field [
	 ^field
]

{ #category : #accessing }
GBPDescriptorProto >> field: anObject [
	field:= anObject.
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
GBPDescriptorProto >> reserved_range [
	 ^reserved_range
]

{ #category : #accessing }
GBPDescriptorProto >> reserved_range: anObject [
	reserved_range:= anObject.
]
