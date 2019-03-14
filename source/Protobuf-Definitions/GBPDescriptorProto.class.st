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
	#category : #'Protobuf-Definitions'
}
