Class {
	#name : #'GCP_GPBDescriptorProto_ReservedRange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#start => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'start\'; fieldNumber: 1; beOptional; jsonFieldName: \'start\')',
		'#end => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'end\'; fieldNumber: 2; beOptional; jsonFieldName: \'end\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GPBDescriptorProto_ReservedRange >> end [
	 ^end
]

{ #category : #accessing }
GCP_GPBDescriptorProto_ReservedRange >> end: anObject [
	end:= anObject.
]

{ #category : #accessing }
GCP_GPBDescriptorProto_ReservedRange >> start [
	 ^start
]

{ #category : #accessing }
GCP_GPBDescriptorProto_ReservedRange >> start: anObject [
	start:= anObject.
]
