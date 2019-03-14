Class {
	#name : #GBPFieldOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#packed => (PBTypeBool asSlot fieldName: \'packaged\'; fieldNumber: 2; beOptional)',
		'#deprecated => (PBTypeBool asSlot fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: false)'
	],
	#category : #'Protobuf-Definitions'
}
