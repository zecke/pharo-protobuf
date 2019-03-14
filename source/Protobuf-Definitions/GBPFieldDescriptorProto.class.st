Class {
	#name : #GBPFieldDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#extendee => ((PBPropertySlot with: #PBTypeString) fieldName: \'extendee\'; fieldNumber: 2; beOptional)',
		'#number => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'number\'; fieldNumber: 3; beOptional)',
		'#label => ((PBPropertySlot with: #GBPFieldDescriptorProto_Label) fieldName: \'label\'; fieldNumber: 4; beOptional)',
		'#type => ((PBPropertySlot with: #GBPFieldDescriptorProto_Type) fieldName: \'type\'; fieldNumber: 5; beOptional)',
		'#type_name => ((PBPropertySlot with: #PBTypeString) fieldName: \'type_name\'; fieldNumber: 6; beOptional)',
		'#default_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'default_value\'; fieldNumber: 7; beOptional)',
		'#options => ((PBPropertySlot with: #GBPFieldOptions) fieldName: \'options\'; fieldNumber: 8; beOptional)',
		'#json_name => ((PBPropertySlot with: #PBTypeString) fieldName: \'json_name\'; fieldNumber: 10; beOptional)'
	],
	#category : #'Protobuf-Definitions'
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
