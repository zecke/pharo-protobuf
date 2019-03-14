Class {
	#name : #GBPFileOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#java_package => (PBTypeString asSlot fieldName: \'java_package\'; fieldNumber: 1; beOptional)',
		'#java_outer_classname => (PBTypeString asSlot fieldName: \'java_outer_classname\'; fieldNumber: 8; beOptional)',
		'#go_package => (PBTypeString asSlot fieldName: \'go_package\'; fieldNumber: 11; beOptional)',
		'#optimize_for => (GBPOptimizeMode asSlot fieldName: \'optimize_for\'; fieldNumber: 9; beOptional)',
		'#cc_enable_arenas => (PBTypeBool asSlot fieldName: \'cc_enable_arenas\'; fieldNumber: 31; beOptional; defaultValue: false)',
		'#objc_class_prefix => (PBTypeString asSlot fieldName: \'objc_class_prefix\'; fieldNumber: 36; beOptional)',
		'#csharp_namespace => (PBTypeString asSlot fieldName: \'csharp_namespace\'; fieldNumber: 37; beOptional)'
	],
	#category : #'Protobuf-Definitions'
}
