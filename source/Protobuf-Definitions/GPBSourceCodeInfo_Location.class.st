Class {
	#name : #'GPBSourceCodeInfo_Location',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#path => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'path\'; fieldNumber: 1; beRepeated; jsonFieldName: \'path\')',
		'#span => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'span\'; fieldNumber: 2; beRepeated; jsonFieldName: \'span\')',
		'#leading_comments => ((PBPropertySlot with: #PBTypeString) fieldName: \'leading_comments\'; fieldNumber: 3; beOptional; jsonFieldName: \'leadingComments\')',
		'#trailing_comments => ((PBPropertySlot with: #PBTypeString) fieldName: \'trailing_comments\'; fieldNumber: 4; beOptional; jsonFieldName: \'trailingComments\')',
		'#leading_detached_comments => ((PBPropertySlot with: #PBTypeString) fieldName: \'leading_detached_comments\'; fieldNumber: 6; beRepeated; jsonFieldName: \'leadingDetachedComments\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBSourceCodeInfo_Location >> add_leading_detached_comments: anObject [
	self leading_detached_commentss add: anObject.
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> add_path: anObject [
	self paths add: anObject.
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> add_span: anObject [
	self spans add: anObject.
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> leading_comments [
	 ^leading_comments
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> leading_comments: anObject [
	leading_comments:= anObject.
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> leading_detached_commentss [
	 ^leading_detached_comments ifNil: [ leading_detached_comments := OrderedCollection new ]
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> paths [
	 ^path ifNil: [ path := OrderedCollection new ]
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> spans [
	 ^span ifNil: [ span := OrderedCollection new ]
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> trailing_comments [
	 ^trailing_comments
]

{ #category : #accessing }
GPBSourceCodeInfo_Location >> trailing_comments: anObject [
	trailing_comments:= anObject.
]
