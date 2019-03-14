Class {
	#name : #GBPFileDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => (PBTypeString asSlot fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#package => (PBTypeString asSlot fieldName: \'package\'; fieldNumber: 2; beOptional)',
		'#message_type => (GBPDescriptorProto asSlot fieldName: \'message_type\'; fieldNumber: 4; beOptional; beRepeated)',
		'#options => (GBPFileOptions asSlot fieldName: \'options\'; fieldNumber: 8; beOptional)'
	],
	#category : #'Protobuf-Definitions'
}
