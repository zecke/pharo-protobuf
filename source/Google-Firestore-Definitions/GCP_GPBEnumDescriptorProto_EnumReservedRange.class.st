Class {
	#name : #'GCP_GPBEnumDescriptorProto_EnumReservedRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'start\'; fieldNumber: 1; beOptional; jsonFieldName: \'start\')',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 2; beOptional; jsonFieldName: \'end\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBEnumDescriptorProto_EnumReservedRange >> end [
	 ^end
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto_EnumReservedRange >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto_EnumReservedRange >> start [
	 ^start
]

{ #category : #accessing }
GCP_GPBEnumDescriptorProto_EnumReservedRange >> start: anObject [
	start:= anObject.
]
