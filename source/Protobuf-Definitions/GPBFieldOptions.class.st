Class {
	#name : #GPBFieldOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#packed => ((PBPropertySlot with: #PBTypeBool) fieldName: \'packed\'; fieldNumber: 2; beOptional)',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: false)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBFieldOptions >> deprecated [
	 ^deprecated
]

{ #category : #accessing }
GPBFieldOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #accessing }
GPBFieldOptions >> packed [
	 ^packed
]

{ #category : #accessing }
GPBFieldOptions >> packed: anObject [
	packed:= anObject.
]
