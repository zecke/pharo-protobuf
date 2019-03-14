Class {
	#name : #GBPEnumDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => (PBTypeString asSlot fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#value => (GBPEnumValueDescriptorProto asSlot fieldName: \'value\'; fieldNumber: 2; beRepeated)'
	],
	#category : #'Protobuf-Definitions'
}
