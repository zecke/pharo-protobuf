Class {
	#name : #GBPEnumValueDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => (PBTypeString asSlot fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#number => (PBTypeInt32 asSlot fieldName: \'number\'; fieldNumber: 2; beOptional)'
	],
	#category : #'Protobuf-Definitions'
}
