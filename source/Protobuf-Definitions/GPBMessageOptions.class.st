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

{ #category : #accessing }
GPBMessageOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GPBMessageOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GPBMessageOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #'as yet unclassified' }
GPBMessageOptions >> initialize [
	super initialize.
	message_set_wire_format := false.
	no_standard_descriptor_accessor := false.
	deprecated := false.

]

{ #category : #accessing }
GPBMessageOptions >> map_entry [
	 ^map_entry
]

{ #category : #accessing }
GPBMessageOptions >> map_entry: anObject [
	map_entry:= anObject.
]

{ #category : #accessing }
GPBMessageOptions >> message_set_wire_format [
	 ^message_set_wire_format ifNil: [false]
]

{ #category : #accessing }
GPBMessageOptions >> message_set_wire_format: anObject [
	message_set_wire_format:= anObject.
]

{ #category : #accessing }
GPBMessageOptions >> no_standard_descriptor_accessor [
	 ^no_standard_descriptor_accessor ifNil: [false]
]

{ #category : #accessing }
GPBMessageOptions >> no_standard_descriptor_accessor: anObject [
	no_standard_descriptor_accessor:= anObject.
]

{ #category : #accessing }
GPBMessageOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
