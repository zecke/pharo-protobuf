Class {
	#name : #'GBPDescriptorProto_ReservedRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'start\'; fieldNumber: 1; beOptional)',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 2; beOptional)'
	],
	#category : #'Protobuf-Definitions'
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
