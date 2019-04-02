Class {
	#name : #GPBOneofDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#options => ((PBPropertySlot with: #GPBOneofOptions) fieldName: \'options\'; fieldNumber: 2; beOptional; jsonFieldName: \'options\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBOneofDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GPBOneofDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GPBOneofDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GPBOneofDescriptorProto >> options: anObject [
	options:= anObject.
]
