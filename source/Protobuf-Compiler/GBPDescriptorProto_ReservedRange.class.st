Class {
	#name : #'GBPDescriptorProto_ReservedRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => (PBTypeInt32 asSlot fieldName: \'start\'; fieldNumber: 1; beOptional)',
		'#end => (PBTypeInt32 asSlot fieldName: \'end\'; fieldNumber: 2; beOptional)'
	],
	#category : #'Protobuf-Compiler-Definitions'
}

{ #category : #accessing }
GBPDescriptorProto_ReservedRange >> end [
	 ^end
]

{ #category : #accessing }
GBPDescriptorProto_ReservedRange >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GBPDescriptorProto_ReservedRange >> start [
	 ^start
]

{ #category : #accessing }
GBPDescriptorProto_ReservedRange >> start: anObject [
	start:= anObject.
]
