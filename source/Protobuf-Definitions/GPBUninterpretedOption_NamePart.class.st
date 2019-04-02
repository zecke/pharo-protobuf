Class {
	#name : #'GPBUninterpretedOption_NamePart',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name_part => ((PBPropertySlot with: #PBTypeString) fieldName: \'name_part\'; fieldNumber: 1; jsonFieldName: \'namePart\')',
		'#is_extension => ((PBPropertySlot with: #PBTypeBool) fieldName: \'is_extension\'; fieldNumber: 2; jsonFieldName: \'isExtension\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBUninterpretedOption_NamePart >> is_extension [
	 ^is_extension
]

{ #category : #accessing }
GPBUninterpretedOption_NamePart >> is_extension: anObject [
	is_extension:= anObject.
]

{ #category : #accessing }
GPBUninterpretedOption_NamePart >> name_part [
	 ^name_part
]

{ #category : #accessing }
GPBUninterpretedOption_NamePart >> name_part: anObject [
	name_part:= anObject.
]
