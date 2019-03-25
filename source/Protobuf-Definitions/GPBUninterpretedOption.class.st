Class {
	#name : #GPBUninterpretedOption,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #GPBUninterpretedOption_NamePart) fieldName: \'name\'; fieldNumber: 2; beRepeated; jsonFieldName: \'name\')',
		'#identifier_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'identifier_value\'; fieldNumber: 3; beOptional; jsonFieldName: \'identifierValue\')',
		'#positive_int_value => ((PBPropertySlot with: #PBTypeUint64) fieldName: \'positive_int_value\'; fieldNumber: 4; beOptional; jsonFieldName: \'positiveIntValue\')',
		'#negative_int_value => ((PBPropertySlot with: #PBTypeInt64) fieldName: \'negative_int_value\'; fieldNumber: 5; beOptional; jsonFieldName: \'negativeIntValue\')',
		'#double_value => ((PBPropertySlot with: #PBTypeDouble) fieldName: \'double_value\'; fieldNumber: 6; beOptional; jsonFieldName: \'doubleValue\')',
		'#string_value => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'string_value\'; fieldNumber: 7; beOptional; jsonFieldName: \'stringValue\')',
		'#aggregate_value => ((PBPropertySlot with: #PBTypeString) fieldName: \'aggregate_value\'; fieldNumber: 8; beOptional; jsonFieldName: \'aggregateValue\')'
	],
	#category : #'Protobuf-Definitions'
}
