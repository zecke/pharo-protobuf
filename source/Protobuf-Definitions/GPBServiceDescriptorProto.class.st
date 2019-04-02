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

{ #category : #accessing }
GPBServiceDescriptorProto >> add_method: anObject [
	self methods add: anObject.
]

{ #category : #accessing }
GPBServiceDescriptorProto >> methods [
	 ^method ifNil: [ method := OrderedCollection new ]
]

{ #category : #accessing }
GPBServiceDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GPBServiceDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GPBServiceDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GPBServiceDescriptorProto >> options: anObject [
	options:= anObject.
]
