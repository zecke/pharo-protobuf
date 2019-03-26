Class {
	#name : #'GPBDescriptorProto_ReservedRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'start\'; fieldNumber: 1; beOptional; jsonFieldName: \'start\')',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 2; beOptional; jsonFieldName: \'end\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBDescriptorProto_ReservedRange >> end [
	 ^end
]

{ #category : #accessing }
GPBDescriptorProto_ReservedRange >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GPBDescriptorProto_ReservedRange >> start [
	 ^start
]

{ #category : #accessing }
GPBDescriptorProto_ReservedRange >> start: anObject [
	start:= anObject.
]
