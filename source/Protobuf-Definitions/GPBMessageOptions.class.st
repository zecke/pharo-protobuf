Class {
	#name : #GPBMessageOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#message_set_wire_format => ((PBPropertySlot with: #PBTypeBool) fieldName: \'message_set_wire_format\'; fieldNumber: 1; beOptional; defaultValue: \'false\'; jsonFieldName: \'messageSetWireFormat\')',
		'#no_standard_descriptor_accessor => ((PBPropertySlot with: #PBTypeBool) fieldName: \'no_standard_descriptor_accessor\'; fieldNumber: 2; beOptional; defaultValue: \'false\'; jsonFieldName: \'noStandardDescriptorAccessor\')',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#map_entry => ((PBPropertySlot with: #PBTypeBool) fieldName: \'map_entry\'; fieldNumber: 7; beOptional; jsonFieldName: \'mapEntry\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}
