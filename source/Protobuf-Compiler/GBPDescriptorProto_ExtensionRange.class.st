Class {
	#name : #'GBPDescriptorProto_ExtensionRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => (PBTypeInt32 asSlot fieldName: \'start\'; fieldNumber: 1; beOptional)',
		'#end => (PBTypeInt32 asSlot fieldName: \'end\'; fieldNumber: 2; beOptional)'
	],
	#category : #'Protobuf-Compiler-Definitions'
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
