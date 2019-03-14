Class {
	#name : #GBPFileDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#package => ((PBPropertySlot with: #PBTypeString) fieldName: \'package\'; fieldNumber: 2; beOptional)',
		'#message_type => ((PBPropertySlot with: #GBPDescriptorProto) fieldName: \'message_type\'; fieldNumber: 4; beOptional; beRepeated)',
		'#options => ((PBPropertySlot with: #GBPFileOptions) fieldName: \'options\'; fieldNumber: 8; beOptional)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GBPFileDescriptorProto >> add_message_type: anObject [
	self message_types add: anObject.
]

{ #category : #accessing }
GBPFileDescriptorProto >> message_types [
	 ^message_type ifNil: [ message_type := OrderedCollection new ]
]

{ #category : #accessing }
GBPFileDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GBPFileDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GBPFileDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GBPFileDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GBPFileDescriptorProto >> package [
	 ^package
]

{ #category : #accessing }
GBPFileDescriptorProto >> package: anObject [
	package:= anObject.
]
