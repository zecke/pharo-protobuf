Class {
	#name : #GBPFieldDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => (PBTypeString asSlot fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#extendee => (PBTypeString asSlot fieldName: \'extendee\'; fieldNumber: 2; beOptional)',
		'#number => (PBTypeInt32 asSlot fieldName: \'number\'; fieldNumber: 3; beOptional)',
		'#label => (GBPFieldDescriptorProto_Label asSlot fieldName: \'label\'; fieldNumber: 4; beOptional)',
		'#type => (GBPFieldDescriptorProto_Type asSlot fieldName: \'type\'; fieldNumber: 5; beOptional)',
		'#type_name => (PBTypeString asSlot fieldName: \'type_name\'; fieldNumber: 6; beOptional)',
		'#default_value => (PBTypeString asSlot fieldName: \'default_value\'; fieldNumber: 7; beOptional)',
		'#options => (GBPFieldOptions asSlot fieldName: \'options\'; fieldNumber: 8; beOptional)',
		'#json_name => (PBTypeString asSlot fieldName: \'json_name\'; fieldNumber: 10; beOptional)'
	],
	#category : #'Protobuf-Compiler-Definitions'
}

{ #category : #accessing }
GBPFieldDescriptorProto >> default_value [
	 ^default_value
]

{ #category : #accessing }
GBPFieldDescriptorProto >> default_value: anObject [
	default_value:= anObject.
]

{ #category : #accessing }
GBPFieldDescriptorProto >> extendee [
	 ^extendee
]

{ #category : #accessing }
GBPFieldDescriptorProto >> extendee: anObject [
	extendee:= anObject.
]

{ #category : #accessing }
GBPFieldDescriptorProto >> json_name [
	 ^json_name
]

{ #category : #accessing }
GBPFieldDescriptorProto >> json_name: anObject [
	json_name:= anObject.
]

{ #category : #accessing }
GBPFieldDescriptorProto >> label [
	 ^label
]

{ #category : #accessing }
GBPFieldDescriptorProto >> label: anObject [
	label:= anObject.
]

{ #category : #accessing }
GBPFieldDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GBPFieldDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GBPFieldDescriptorProto >> number [
	 ^number
]

{ #category : #accessing }
GBPFieldDescriptorProto >> number: anObject [
	number:= anObject.
]

{ #category : #accessing }
GBPFieldDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GBPFieldDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GBPFieldDescriptorProto >> type [
	 ^type
]

{ #category : #accessing }
GBPFieldDescriptorProto >> type: anObject [
	type:= anObject.
]

{ #category : #accessing }
GBPFieldDescriptorProto >> type_name [
	 ^type_name
]

{ #category : #accessing }
GBPFieldDescriptorProto >> type_name: anObject [
	type_name:= anObject.
]
