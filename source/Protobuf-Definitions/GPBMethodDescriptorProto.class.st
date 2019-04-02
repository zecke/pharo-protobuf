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

{ #category : #accessing }
GPBMethodDescriptorProto >> client_streaming [
	 ^client_streaming ifNil: [false]
]

{ #category : #accessing }
GPBMethodDescriptorProto >> client_streaming: anObject [
	client_streaming:= anObject.
]

{ #category : #'as yet unclassified' }
GPBMethodDescriptorProto >> initialize [
	super initialize.
	client_streaming := false.
	server_streaming := false.

]

{ #category : #accessing }
GPBMethodDescriptorProto >> input_type [
	 ^input_type
]

{ #category : #accessing }
GPBMethodDescriptorProto >> input_type: anObject [
	input_type:= anObject.
]

{ #category : #accessing }
GPBMethodDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GPBMethodDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GPBMethodDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GPBMethodDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GPBMethodDescriptorProto >> output_type [
	 ^output_type
]

{ #category : #accessing }
GPBMethodDescriptorProto >> output_type: anObject [
	output_type:= anObject.
]

{ #category : #accessing }
GPBMethodDescriptorProto >> server_streaming [
	 ^server_streaming ifNil: [false]
]

{ #category : #accessing }
GPBMethodDescriptorProto >> server_streaming: anObject [
	server_streaming:= anObject.
]
