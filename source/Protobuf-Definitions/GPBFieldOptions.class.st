Class {
	#name : #GPBFieldOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#ctype => ((PBPropertySlot with: #GPBFieldOptions_CType) fieldName: \'ctype\'; fieldNumber: 1; beOptional; defaultValue: \'STRING\'; jsonFieldName: \'ctype\')',
		'#packed => ((PBPropertySlot with: #PBTypeBool) fieldName: \'packed\'; fieldNumber: 2; beOptional; jsonFieldName: \'packed\')',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#lazy => ((PBPropertySlot with: #PBTypeBool) fieldName: \'lazy\'; fieldNumber: 5; beOptional; defaultValue: \'false\'; jsonFieldName: \'lazy\')',
		'#jstype => ((PBPropertySlot with: #GPBFieldOptions_JSType) fieldName: \'jstype\'; fieldNumber: 6; beOptional; defaultValue: \'JS_NORMAL\'; jsonFieldName: \'jstype\')',
		'#weak => ((PBPropertySlot with: #PBTypeBool) fieldName: \'weak\'; fieldNumber: 10; beOptional; defaultValue: \'false\'; jsonFieldName: \'weak\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBFieldOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GPBFieldOptions >> ctype [
	 ^ctype ifNil: [0" STRING "]
]

{ #category : #accessing }
GPBFieldOptions >> ctype: anObject [
	ctype:= anObject.
]

{ #category : #accessing }
GPBFieldOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GPBFieldOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #'as yet unclassified' }
GPBFieldOptions >> initialize [
	super initialize.
	ctype := 0" STRING ".
	deprecated := false.
	lazy := false.
	jstype := 0" JS_NORMAL ".
	weak := false.

]

{ #category : #accessing }
GPBFieldOptions >> jstype [
	 ^jstype ifNil: [0" JS_NORMAL "]
]

{ #category : #accessing }
GPBFieldOptions >> jstype: anObject [
	jstype:= anObject.
]

{ #category : #accessing }
GPBFieldOptions >> lazy [
	 ^lazy ifNil: [false]
]

{ #category : #accessing }
GPBFieldOptions >> lazy: anObject [
	lazy:= anObject.
]

{ #category : #accessing }
GPBFieldOptions >> packed [
	 ^packed
]

{ #category : #accessing }
GPBFieldOptions >> packed: anObject [
	packed:= anObject.
]

{ #category : #accessing }
GPBFieldOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]

{ #category : #accessing }
GPBFieldOptions >> weak [
	 ^weak ifNil: [false]
]

{ #category : #accessing }
GPBFieldOptions >> weak: anObject [
	weak:= anObject.
]
