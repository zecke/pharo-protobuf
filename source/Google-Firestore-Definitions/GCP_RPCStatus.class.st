Class {
	#name : #'GCP_RPCStatus',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#code => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'code\'; fieldNumber: 1; beOptional; jsonFieldName: \'code\')',
		'#message => ((PBPropertySlot with: #PBTypeString) fieldName: \'message\'; fieldNumber: 2; beOptional; jsonFieldName: \'message\')',
		'#details => ((PBPropertySlot with: #GCP_GPBAny) fieldName: \'details\'; fieldNumber: 3; beRepeated; jsonFieldName: \'details\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_RPCStatus >> add_details: anObject [
	self detailss add: anObject.
]

{ #category : #accessing }
GCP_RPCStatus >> code [
	 ^code
]

{ #category : #accessing }
GCP_RPCStatus >> code: anObject [
	code:= anObject.
]

{ #category : #accessing }
GCP_RPCStatus >> detailss [
	 ^details ifNil: [ details := OrderedCollection new ]
]

{ #category : #accessing }
GCP_RPCStatus >> message [
	 ^message
]

{ #category : #accessing }
GCP_RPCStatus >> message: anObject [
	message:= anObject.
]
