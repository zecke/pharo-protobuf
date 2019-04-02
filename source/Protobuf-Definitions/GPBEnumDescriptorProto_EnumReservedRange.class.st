Class {
	#name : #'GPBEnumDescriptorProto_EnumReservedRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'start\'; fieldNumber: 1; beOptional; jsonFieldName: \'start\')',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 2; beOptional; jsonFieldName: \'end\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBEnumDescriptorProto_EnumReservedRange >> end [
	 ^end
]

{ #category : #accessing }
GPBEnumDescriptorProto_EnumReservedRange >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GPBEnumDescriptorProto_EnumReservedRange >> start [
	 ^start
]

{ #category : #accessing }
GPBEnumDescriptorProto_EnumReservedRange >> start: anObject [
	start:= anObject.
]
