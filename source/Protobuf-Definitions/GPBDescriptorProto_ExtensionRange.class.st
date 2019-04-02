Class {
	#name : #'GPBDescriptorProto_ExtensionRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'start\'; fieldNumber: 1; beOptional; jsonFieldName: \'start\')',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 2; beOptional; jsonFieldName: \'end\')',
		'#options => ((PBPropertySlot with: #GPBExtensionRangeOptions) fieldName: \'options\'; fieldNumber: 3; beOptional; jsonFieldName: \'options\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBDescriptorProto_ExtensionRange >> end [
	 ^end
]

{ #category : #accessing }
GPBDescriptorProto_ExtensionRange >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GPBDescriptorProto_ExtensionRange >> options [
	 ^options
]

{ #category : #accessing }
GPBDescriptorProto_ExtensionRange >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GPBDescriptorProto_ExtensionRange >> start [
	 ^start
]

{ #category : #accessing }
GPBDescriptorProto_ExtensionRange >> start: anObject [
	start:= anObject.
]
