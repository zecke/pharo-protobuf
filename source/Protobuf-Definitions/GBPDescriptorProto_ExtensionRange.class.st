Class {
	#name : #'GBPDescriptorProto_ExtensionRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'start\'; fieldNumber: 1; beOptional)',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 2; beOptional)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GBPDescriptorProto_ExtensionRange >> end [
	 ^end
]

{ #category : #accessing }
GBPDescriptorProto_ExtensionRange >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GBPDescriptorProto_ExtensionRange >> start [
	 ^start
]

{ #category : #accessing }
GBPDescriptorProto_ExtensionRange >> start: anObject [
	start:= anObject.
]
