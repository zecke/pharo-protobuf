Class {
	#name : #'GRPC_EX_HLWHelloRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')'
	],
	#category : #'GRPC-Examples'
}

{ #category : #accessing }
GRPC_EX_HLWHelloRequest >> name [
	 ^name
]

{ #category : #accessing }
GRPC_EX_HLWHelloRequest >> name: anObject [
	name:= anObject.
]
