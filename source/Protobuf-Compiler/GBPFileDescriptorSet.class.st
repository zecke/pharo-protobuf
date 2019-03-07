Class {
	#name : #GBPFileDescriptorSet,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#file => (GBPFileDescriptorProto asSlot fieldName: \'file\'; fieldNumber: 1; beRepeated)'
	],
	#category : #'Protobuf-Compiler-Definitions'
}

{ #category : #accessing }
GBPFileDescriptorSet >> file [
	 ^file
]

{ #category : #accessing }
GBPFileDescriptorSet >> file: anObject [
	file:= anObject.
]
