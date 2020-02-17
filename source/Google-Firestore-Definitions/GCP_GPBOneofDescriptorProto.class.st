Class {
	#name : #'GCP_GPBOneofDescriptorProto',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#options => ((PBPropertySlot with: #GCP_GPBOneofOptions) fieldName: \'options\'; fieldNumber: 2; beOptional; jsonFieldName: \'options\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBOneofDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GCP_GPBOneofDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GCP_GPBOneofDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GCP_GPBOneofDescriptorProto >> options: anObject [
	options:= anObject.
]
