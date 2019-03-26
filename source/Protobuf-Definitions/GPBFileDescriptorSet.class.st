Class {
	#name : #GPBFileDescriptorSet,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#file => ((PBPropertySlot with: #GPBFileDescriptorProto) fieldName: \'file\'; fieldNumber: 1; beRepeated; jsonFieldName: \'file\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBFileDescriptorSet >> add_file: anObject [
	self files add: anObject.
]

{ #category : #accessing }
GPBFileDescriptorSet >> files [
	 ^file ifNil: [ file := OrderedCollection new ]
]
