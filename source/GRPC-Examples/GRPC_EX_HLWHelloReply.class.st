Class {
	#name : #'GRPC_EX_HLWHelloReply',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#message => ((PBPropertySlot with: #PBTypeString) fieldName: \'message\'; fieldNumber: 1; beOptional; jsonFieldName: \'message\')'
	],
	#category : #'GRPC-Examples'
}

{ #category : #accessing }
GRPC_EX_HLWHelloReply >> message [
	 ^message
]

{ #category : #accessing }
GRPC_EX_HLWHelloReply >> message: anObject [
	message:= anObject.
]
