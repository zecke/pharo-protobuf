Class {
	#name : #GPBFileDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#package => ((PBPropertySlot with: #PBTypeString) fieldName: \'package\'; fieldNumber: 2; beOptional; jsonFieldName: \'package\')',
		'#dependency => ((PBPropertySlot with: #PBTypeString) fieldName: \'dependency\'; fieldNumber: 3; beRepeated; jsonFieldName: \'dependency\')',
		'#message_type => ((PBPropertySlot with: #GPBDescriptorProto) fieldName: \'message_type\'; fieldNumber: 4; beRepeated; jsonFieldName: \'messageType\')',
		'#enum_type => ((PBPropertySlot with: #GPBEnumDescriptorProto) fieldName: \'enum_type\'; fieldNumber: 5; beRepeated; jsonFieldName: \'enumType\')',
		'#service => ((PBPropertySlot with: #GPBServiceDescriptorProto) fieldName: \'service\'; fieldNumber: 6; beRepeated; jsonFieldName: \'service\')',
		'#extension => ((PBPropertySlot with: #GPBFieldDescriptorProto) fieldName: \'extension\'; fieldNumber: 7; beRepeated; jsonFieldName: \'extension\')',
		'#options => ((PBPropertySlot with: #GPBFileOptions) fieldName: \'options\'; fieldNumber: 8; beOptional; jsonFieldName: \'options\')',
		'#source_code_info => ((PBPropertySlot with: #GPBSourceCodeInfo) fieldName: \'source_code_info\'; fieldNumber: 9; beOptional; jsonFieldName: \'sourceCodeInfo\')',
		'#public_dependency => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'public_dependency\'; fieldNumber: 10; beRepeated; jsonFieldName: \'publicDependency\')',
		'#weak_dependency => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'weak_dependency\'; fieldNumber: 11; beRepeated; jsonFieldName: \'weakDependency\')',
		'#syntax => ((PBPropertySlot with: #PBTypeString) fieldName: \'syntax\'; fieldNumber: 12; beOptional; jsonFieldName: \'syntax\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBFileDescriptorProto >> add_message_type: anObject [
	self message_types add: anObject.
]

{ #category : #accessing }
GPBFileDescriptorProto >> message_types [
	 ^message_type ifNil: [ message_type := OrderedCollection new ]
]

{ #category : #accessing }
GPBFileDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GPBFileDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GPBFileDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GPBFileDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GPBFileDescriptorProto >> package [
	 ^package
]

{ #category : #accessing }
GPBFileDescriptorProto >> package: anObject [
	package:= anObject.
]
