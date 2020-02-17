Class {
	#name : #'GCP_GPBFileDescriptorSet',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#file => ((PBPropertySlot with: #GCP_GPBFileDescriptorProto) fieldName: \'file\'; fieldNumber: 1; beRepeated; jsonFieldName: \'file\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBFileDescriptorSet >> add_file: anObject [
	self files add: anObject.
]

{ #category : #accessing }
GCP_GPBFileDescriptorSet >> files [
	 ^file ifNil: [ file := OrderedCollection new ]
]
