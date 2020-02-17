Class {
	#name : #'GCP_GAPIHttp',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#rules => ((PBPropertySlot with: #GCP_GAPIHttpRule) fieldName: \'rules\'; fieldNumber: 1; beRepeated; jsonFieldName: \'rules\')',
		'#fully_decode_reserved_expansion => ((PBPropertySlot with: #PBTypeBool) fieldName: \'fully_decode_reserved_expansion\'; fieldNumber: 2; beOptional; jsonFieldName: \'fullyDecodeReservedExpansion\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GAPIHttp >> add_rules: anObject [
	self ruless add: anObject.
]

{ #category : #accessing }
GCP_GAPIHttp >> fully_decode_reserved_expansion [
	 ^fully_decode_reserved_expansion
]

{ #category : #accessing }
GCP_GAPIHttp >> fully_decode_reserved_expansion: anObject [
	fully_decode_reserved_expansion:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttp >> ruless [
	 ^rules ifNil: [ rules := OrderedCollection new ]
]
