Class {
	#name : #'GPBFieldDescriptorProto_Label',
	#superclass : #PBTypeEnum,
	#classVars : [
		'LABEL_OPTIONAL',
		'LABEL_REPEATED',
		'LABEL_REQUIRED'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #'as yet unclassified' }
GPBFieldDescriptorProto_Label class >> LABEL_OPTIONAL [
	^ LABEL_OPTIONAL
]

{ #category : #'as yet unclassified' }
GPBFieldDescriptorProto_Label class >> LABEL_REPEATED [
	^ LABEL_REPEATED
]

{ #category : #'as yet unclassified' }
GPBFieldDescriptorProto_Label class >> LABEL_REQUIRED [
	^ LABEL_REQUIRED
]

{ #category : #'as yet unclassified' }
GPBFieldDescriptorProto_Label class >> initialize [
LABEL_OPTIONAL := 1.
LABEL_REQUIRED := 2.
LABEL_REPEATED := 3.

]
