Class {
	#name : #'GCP_GPBEnumDescriptorProto',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#value => ((PBPropertySlot with: #GCP_GPBEnumValueDescriptorProto) fieldName: \'value\'; fieldNumber: 2; beRepeated; jsonFieldName: \'value\')',
		'#options => ((PBPropertySlot with: #GCP_GPBEnumOptions) fieldName: \'options\'; fieldNumber: 3; beOptional; jsonFieldName: \'options\')',
		'#reserved_range => ((PBPropertySlot with: #GCP_GPBEnumDescriptorProto_EnumReservedRange) fieldName: \'reserved_range\'; fieldNumber: 4; beRepeated; jsonFieldName: \'reservedRange\')',
		'#reserved_name => ((PBPropertySlot with: #PBTypeString) fieldName: \'reserved_name\'; fieldNumber: 5; beRepeated; jsonFieldName: \'reservedName\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> add_reserved_name: anObject [
	self reserved_names add: anObject.
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> add_reserved_range: anObject [
	self reserved_ranges add: anObject.
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> add_value: anObject [
	self values add: anObject.
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> name [
	 ^name
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> options [
	 ^options
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> reserved_names [
	 ^reserved_name ifNil: [ reserved_name := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> reserved_ranges [
	 ^reserved_range ifNil: [ reserved_range := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto >> values [
	 ^value ifNil: [ value := OrderedCollection new ]
]
