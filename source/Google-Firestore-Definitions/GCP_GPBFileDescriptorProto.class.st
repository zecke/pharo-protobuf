Class {
	#name : #'GCP_GPBFileDescriptorProto',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#package => ((PBPropertySlot with: #PBTypeString) fieldName: \'package\'; fieldNumber: 2; beOptional; jsonFieldName: \'package\')',
		'#dependency => ((PBPropertySlot with: #PBTypeString) fieldName: \'dependency\'; fieldNumber: 3; beRepeated; jsonFieldName: \'dependency\')',
		'#message_type => ((PBPropertySlot with: #GCP_GPBDescriptorProto) fieldName: \'message_type\'; fieldNumber: 4; beRepeated; jsonFieldName: \'messageType\')',
		'#enum_type => ((PBPropertySlot with: #GCP_GPBEnumDescriptorProto) fieldName: \'enum_type\'; fieldNumber: 5; beRepeated; jsonFieldName: \'enumType\')',
		'#service => ((PBPropertySlot with: #GCP_GPBServiceDescriptorProto) fieldName: \'service\'; fieldNumber: 6; beRepeated; jsonFieldName: \'service\')',
		'#extension => ((PBPropertySlot with: #GCP_GPBFieldDescriptorProto) fieldName: \'extension\'; fieldNumber: 7; beRepeated; jsonFieldName: \'extension\')',
		'#options => ((PBPropertySlot with: #GCP_GPBFileOptions) fieldName: \'options\'; fieldNumber: 8; beOptional; jsonFieldName: \'options\')',
		'#source_code_info => ((PBPropertySlot with: #GCP_GPBSourceCodeInfo) fieldName: \'source_code_info\'; fieldNumber: 9; beOptional; jsonFieldName: \'sourceCodeInfo\')',
		'#public_dependency => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'public_dependency\'; fieldNumber: 10; beRepeated; jsonFieldName: \'publicDependency\')',
		'#weak_dependency => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'weak_dependency\'; fieldNumber: 11; beRepeated; jsonFieldName: \'weakDependency\')',
		'#syntax => ((PBPropertySlot with: #PBTypeString) fieldName: \'syntax\'; fieldNumber: 12; beOptional; jsonFieldName: \'syntax\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> add_dependency: anObject [
	self dependencys add: anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> add_enum_type: anObject [
	self enum_types add: anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> add_extension: anObject [
	self extensions add: anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> add_message_type: anObject [
	self message_types add: anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> add_public_dependency: anObject [
	self public_dependencys add: anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> add_service: anObject [
	self services add: anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> add_weak_dependency: anObject [
	self weak_dependencys add: anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> dependencys [
	 ^dependency ifNil: [ dependency := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> enum_types [
	 ^enum_type ifNil: [ enum_type := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> extensions [
	 ^extension ifNil: [ extension := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> message_types [
	 ^message_type ifNil: [ message_type := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> package [
	 ^package
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> package: anObject [
	package:= anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> public_dependencys [
	 ^public_dependency ifNil: [ public_dependency := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> services [
	 ^service ifNil: [ service := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> source_code_info [
	 ^source_code_info
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> source_code_info: anObject [
	source_code_info:= anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> syntax [
	 ^syntax
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> syntax: anObject [
	syntax:= anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorProto >> weak_dependencys [
	 ^weak_dependency ifNil: [ weak_dependency := OrderedCollection new ]
]
