Class {
	#name : #GPBEnumValueOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 1; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #'as yet unclassified' }
GPBEnumValueOptions >> initialize [
	super initialize.
	deprecated := false.

]
