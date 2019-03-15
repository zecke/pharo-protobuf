Class {
	#name : #GBPFieldOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#packed => ((PBPropertySlot with: #PBTypeBool) fieldName: \'packed\'; fieldNumber: 2; beOptional)',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: false)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GBPFieldOptions >> deprecated [
	 ^deprecated
]

{ #category : #accessing }
GBPFieldOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #accessing }
GBPFieldOptions >> packed [
	 ^packed
]

{ #category : #accessing }
GBPFieldOptions >> packed: anObject [
	packed:= anObject.
]
