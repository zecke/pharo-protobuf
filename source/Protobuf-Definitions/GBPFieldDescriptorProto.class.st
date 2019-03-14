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
	#category : #'Protobuf-Definitions'
}
