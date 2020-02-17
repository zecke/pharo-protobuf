Class {
	#name : #'GCP_GPBServiceDescriptorProto',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#method => ((PBPropertySlot with: #GCP_GPBMethodDescriptorProto) fieldName: \'method\'; fieldNumber: 2; beRepeated; jsonFieldName: \'method\')',
		'#options => ((PBPropertySlot with: #GCP_GPBServiceOptions) fieldName: \'options\'; fieldNumber: 3; beOptional; jsonFieldName: \'options\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBServiceDescriptorProto >> add_method: anObject [
	self methods add: anObject.
]

{ #category : #accessing }
GCP_GPBServiceDescriptorProto >> methods [
	 ^method ifNil: [ method := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBServiceDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GCP_GPBServiceDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GCP_GPBServiceDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GCP_GPBServiceDescriptorProto >> options: anObject [
	options:= anObject.
]
