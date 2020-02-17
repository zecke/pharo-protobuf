Class {
	#name : #'GCP_GPBEnumValueDescriptorProto',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#number => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'number\'; fieldNumber: 2; beOptional; jsonFieldName: \'number\')',
		'#options => ((PBPropertySlot with: #GCP_GPBEnumValueOptions) fieldName: \'options\'; fieldNumber: 3; beOptional; jsonFieldName: \'options\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBEnumValueDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GCP_GPBEnumValueDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GCP_GPBEnumValueDescriptorProto >> number [
	 ^number
]

{ #category : #accessing }
GCP_GPBEnumValueDescriptorProto >> number: anObject [
	number:= anObject.
]

{ #category : #accessing }
GCP_GPBEnumValueDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GCP_GPBEnumValueDescriptorProto >> options: anObject [
	options:= anObject.
]
