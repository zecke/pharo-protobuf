Class {
	#name : #GBPFileDescriptorSet,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#file => ((PBPropertySlot with: #GBPFileDescriptorProto) fieldName: \'file\'; fieldNumber: 1; beRepeated)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GBPFileDescriptorSet >> add_file: anObject [
	self files add: anObject.
]

{ #category : #accessing }
GBPFileDescriptorSet >> files [
	 ^file ifNil: [ file := OrderedCollection new ]
]
