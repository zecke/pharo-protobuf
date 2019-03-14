Class {
	#name : #GBPFieldOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#packed => ((PBPropertySlot with: #PBTypeBool) fieldName: \'packaged\'; fieldNumber: 2; beOptional)',
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
GBPFieldOptions >> packaged [
	 ^packaged
]

{ #category : #accessing }
GBPFieldOptions >> packaged: anObject [
	packaged:= anObject.
]
