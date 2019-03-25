Class {
	#name : #GPBFileDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#package => ((PBPropertySlot with: #PBTypeString) fieldName: \'package\'; fieldNumber: 2; beOptional)',
		'#message_type => ((PBPropertySlot with: #GPBDescriptorProto) fieldName: \'message_type\'; fieldNumber: 4; beOptional; beRepeated)',
		'#options => ((PBPropertySlot with: #GPBFileOptions) fieldName: \'options\'; fieldNumber: 8; beOptional)'
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
