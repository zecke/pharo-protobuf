Class {
	#name : #GBPFileDescriptorProto,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => (PBTypeString asSlot fieldName: \'name\'; fieldNumber: 1; beOptional)',
		'#package => (PBTypeString asSlot fieldName: \'package\'; fieldNumber: 2; beOptional)',
		'#message_type => (GBPDescriptorProto asSlot fieldName: \'message_type\'; fieldNumber: 4; beOptional; beRepeated)',
		'#options => (GBPFileOptions asSlot fieldName: \'options\'; fieldNumber: 8; beOptional)'
	],
	#category : #'Protobuf-Compiler-Definitions'
}

{ #category : #accessing }
GBPFileDescriptorProto >> message_type [
	 ^message_type
]

{ #category : #accessing }
GBPFileDescriptorProto >> message_type: anObject [
	message_type:= anObject.
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
