Class {
	#name : #GPBFieldDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#extendee => ((PBPropertySlot with: #PBTypeString) fieldName: \'extendee\'; fieldNumber: 2; beOptional; jsonFieldName: \'extendee\')',
		'#number => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'number\'; fieldNumber: 3; beOptional; jsonFieldName: \'number\')',
		'#label => ((PBPropertySlot with: #GPBFieldDescriptorProto_Label) fieldName: \'label\'; fieldNumber: 4; beOptional; jsonFieldName: \'label\')',
		'#type => ((PBPropertySlot with: #GPBFieldDescriptorProto_Type) fieldName: \'type\'; fieldNumber: 5; beOptional; jsonFieldName: \'type\')',
		'#type_name => ((PBPropertySlot with: #PBTypeString) fieldName: \'type_name\'; fieldNumber: 6; beOptional; jsonFieldName: \'typeName\')',
		'#default_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'default_value\'; fieldNumber: 7; beOptional; jsonFieldName: \'defaultValue\')',
		'#options => ((PBPropertySlot with: #GPBFieldOptions) fieldName: \'options\'; fieldNumber: 8; beOptional; jsonFieldName: \'options\')',
		'#oneof_index => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'oneof_index\'; fieldNumber: 9; beOptional; jsonFieldName: \'oneofIndex\')',
		'#json_name => ((PBPropertySlot with: #PBTypeString) fieldName: \'json_name\'; fieldNumber: 10; beOptional; jsonFieldName: \'jsonName\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBFieldDescriptorProto >> default_value [
	 ^default_value
]

{ #category : #accessing }
GPBFieldDescriptorProto >> default_value: anObject [
	default_value:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> extendee [
	 ^extendee
]

{ #category : #accessing }
GPBFieldDescriptorProto >> extendee: anObject [
	extendee:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> json_name [
	 ^json_name
]

{ #category : #accessing }
GPBFieldDescriptorProto >> json_name: anObject [
	json_name:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> label [
	 ^label
]

{ #category : #accessing }
GPBFieldDescriptorProto >> label: anObject [
	label:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GPBFieldDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> number [
	 ^number
]

{ #category : #accessing }
GPBFieldDescriptorProto >> number: anObject [
	number:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> oneof_index [
	 ^oneof_index
]

{ #category : #accessing }
GPBFieldDescriptorProto >> oneof_index: anObject [
	oneof_index:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GPBFieldDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> type [
	 ^type
]

{ #category : #accessing }
GPBFieldDescriptorProto >> type: anObject [
	type:= anObject.
]

{ #category : #accessing }
GPBFieldDescriptorProto >> type_name [
	 ^type_name
]

{ #category : #accessing }
GPBFieldDescriptorProto >> type_name: anObject [
	type_name:= anObject.
]
