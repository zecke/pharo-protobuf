Class {
	#name : #'GCP_GPBDescriptorProto_ExtensionRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'start\'; fieldNumber: 1; beOptional; jsonFieldName: \'start\')',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 2; beOptional; jsonFieldName: \'end\')',
		'#options => ((PBPropertySlot with: #GCP_GPBExtensionRangeOptions) fieldName: \'options\'; fieldNumber: 3; beOptional; jsonFieldName: \'options\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBDescriptorProto_ExtensionRange >> end [
	 ^end
]

{ #category : #accessing }
GCP_GPBDescriptorProto_ExtensionRange >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto_ExtensionRange >> options [
	 ^options
]

{ #category : #accessing }
GCP_GPBDescriptorProto_ExtensionRange >> options: anObject [
	options:= anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto_ExtensionRange >> start [
	 ^start
]

{ #category : #accessing }
GCP_GPBDescriptorProto_ExtensionRange >> start: anObject [
	start:= anObject.
]
