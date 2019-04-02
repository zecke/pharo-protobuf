Class {
	#name : #GPBGeneratedCodeInfo,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#annotation => ((PBPropertySlot with: #GPBGeneratedCodeInfo_Annotation) fieldName: \'annotation\'; fieldNumber: 1; beRepeated; jsonFieldName: \'annotation\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBGeneratedCodeInfo >> add_annotation: anObject [
	self annotations add: anObject.
]

{ #category : #accessing }
GPBGeneratedCodeInfo >> annotations [
	 ^annotation ifNil: [ annotation := OrderedCollection new ]
]
