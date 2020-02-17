Class {
	#name : #'GCP_GPBMessageOptions',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#message_set_wire_format => ((PBPropertySlot with: #PBTypeBool) fieldName: \'message_set_wire_format\'; fieldNumber: 1; beOptional; defaultValue: \'false\'; jsonFieldName: \'messageSetWireFormat\')',
		'#no_standard_descriptor_accessor => ((PBPropertySlot with: #PBTypeBool) fieldName: \'no_standard_descriptor_accessor\'; fieldNumber: 2; beOptional; defaultValue: \'false\'; jsonFieldName: \'noStandardDescriptorAccessor\')',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#map_entry => ((PBPropertySlot with: #PBTypeBool) fieldName: \'map_entry\'; fieldNumber: 7; beOptional; jsonFieldName: \'mapEntry\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GCP_GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBMessageOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GCP_GPBMessageOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GCP_GPBMessageOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #'as yet unclassified' }
GCP_GPBMessageOptions >> initialize [
	super initialize.
	message_set_wire_format := false.
	no_standard_descriptor_accessor := false.
	deprecated := false.

]

{ #category : #accessing }
GCP_GPBMessageOptions >> map_entry [
	 ^map_entry
]

{ #category : #accessing }
GCP_GPBMessageOptions >> map_entry: anObject [
	map_entry:= anObject.
]

{ #category : #accessing }
GCP_GPBMessageOptions >> message_set_wire_format [
	 ^message_set_wire_format ifNil: [false]
]

{ #category : #accessing }
GCP_GPBMessageOptions >> message_set_wire_format: anObject [
	message_set_wire_format:= anObject.
]

{ #category : #accessing }
GCP_GPBMessageOptions >> no_standard_descriptor_accessor [
	 ^no_standard_descriptor_accessor ifNil: [false]
]

{ #category : #accessing }
GCP_GPBMessageOptions >> no_standard_descriptor_accessor: anObject [
	no_standard_descriptor_accessor:= anObject.
]

{ #category : #accessing }
GCP_GPBMessageOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
