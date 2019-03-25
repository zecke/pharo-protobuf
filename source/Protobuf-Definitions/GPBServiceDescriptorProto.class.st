Class {
	#name : #GPBServiceDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#method => ((PBPropertySlot with: #GPBMethodDescriptorProto) fieldName: \'method\'; fieldNumber: 2; beRepeated; jsonFieldName: \'method\')',
		'#options => ((PBPropertySlot with: #GPBServiceOptions) fieldName: \'options\'; fieldNumber: 3; beOptional; jsonFieldName: \'options\')'
	],
	#category : #'Protobuf-Definitions'
}
