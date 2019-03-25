Class {
	#name : #GPBMethodOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 33; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#idempotency_level => ((PBPropertySlot with: #GPBMethodOptions_IdempotencyLevel) fieldName: \'idempotency_level\'; fieldNumber: 34; beOptional; defaultValue: \'IDEMPOTENCY_UNKNOWN\'; jsonFieldName: \'idempotencyLevel\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}
