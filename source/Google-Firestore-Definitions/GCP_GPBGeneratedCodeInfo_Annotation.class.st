Class {
	#name : #'GCP_GPBGeneratedCodeInfo_Annotation',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#path => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'path\'; fieldNumber: 1; beRepeated; jsonFieldName: \'path\')',
		'#source_file => ((PBPropertySlot with: #PBTypeString) fieldName: \'source_file\'; fieldNumber: 2; beOptional; jsonFieldName: \'sourceFile\')',
		'#begin => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'begin\'; fieldNumber: 3; beOptional; jsonFieldName: \'begin\')',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 4; beOptional; jsonFieldName: \'end\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo_Annotation >> add_path: anObject [
	self paths add: anObject.
]

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo_Annotation >> begin [
	 ^begin
]

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo_Annotation >> begin: anObject [
	begin:= anObject.
]

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo_Annotation >> end [
	 ^end
]

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo_Annotation >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo_Annotation >> paths [
	 ^path ifNil: [ path := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo_Annotation >> source_file [
	 ^source_file
]

{ #category : #accessing }
GCP_GPBGeneratedCodeInfo_Annotation >> source_file: anObject [
	source_file:= anObject.
]
