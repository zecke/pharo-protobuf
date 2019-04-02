Class {
	#name : #GPBMethodDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#input_type => ((PBPropertySlot with: #PBTypeString) fieldName: \'input_type\'; fieldNumber: 2; beOptional; jsonFieldName: \'inputType\')',
		'#output_type => ((PBPropertySlot with: #PBTypeString) fieldName: \'output_type\'; fieldNumber: 3; beOptional; jsonFieldName: \'outputType\')',
		'#options => ((PBPropertySlot with: #GPBMethodOptions) fieldName: \'options\'; fieldNumber: 4; beOptional; jsonFieldName: \'options\')',
		'#client_streaming => ((PBPropertySlot with: #PBTypeBool) fieldName: \'client_streaming\'; fieldNumber: 5; beOptional; defaultValue: \'false\'; jsonFieldName: \'clientStreaming\')',
		'#server_streaming => ((PBPropertySlot with: #PBTypeBool) fieldName: \'server_streaming\'; fieldNumber: 6; beOptional; defaultValue: \'false\'; jsonFieldName: \'serverStreaming\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #'as yet unclassified' }
GPBMethodDescriptorProto >> initialize [
	super initialize.
	client_streaming := false.
	server_streaming := false.

]
