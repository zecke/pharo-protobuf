Class {
	#name : #GPBEnumOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#allow_alias => ((PBPropertySlot with: #PBTypeBool) fieldName: \'allow_alias\'; fieldNumber: 2; beOptional; jsonFieldName: \'allowAlias\')',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}
