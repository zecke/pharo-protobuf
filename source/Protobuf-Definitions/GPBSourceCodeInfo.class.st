Class {
	#name : #GPBSourceCodeInfo,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#location => ((PBPropertySlot with: #GPBSourceCodeInfo_Location) fieldName: \'location\'; fieldNumber: 1; beRepeated; jsonFieldName: \'location\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBSourceCodeInfo >> add_location: anObject [
	self locations add: anObject.
]

{ #category : #accessing }
GPBSourceCodeInfo >> locations [
	 ^location ifNil: [ location := OrderedCollection new ]
]
