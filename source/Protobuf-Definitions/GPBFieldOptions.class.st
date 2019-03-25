Class {
	#name : #GPBFieldOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#ctype => ((PBPropertySlot with: #GPBFieldOptions_CType) fieldName: \'ctype\'; fieldNumber: 1; beOptional; defaultValue: \'STRING\'; jsonFieldName: \'ctype\')',
		'#packed => ((PBPropertySlot with: #PBTypeBool) fieldName: \'packed\'; fieldNumber: 2; beOptional; jsonFieldName: \'packed\')',
		'#jstype => ((PBPropertySlot with: #GPBFieldOptions_JSType) fieldName: \'jstype\'; fieldNumber: 6; beOptional; defaultValue: \'JS_NORMAL\'; jsonFieldName: \'jstype\')',
		'#lazy => ((PBPropertySlot with: #PBTypeBool) fieldName: \'lazy\'; fieldNumber: 5; beOptional; defaultValue: \'false\'; jsonFieldName: \'lazy\')',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#weak => ((PBPropertySlot with: #PBTypeBool) fieldName: \'weak\'; fieldNumber: 10; beOptional; defaultValue: \'false\'; jsonFieldName: \'weak\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBFieldOptions >> deprecated [
	 ^deprecated
]

{ #category : #accessing }
GPBFieldOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #accessing }
GPBFieldOptions >> packed [
	 ^packed
]

{ #category : #accessing }
GPBFieldOptions >> packed: anObject [
	packed:= anObject.
]
