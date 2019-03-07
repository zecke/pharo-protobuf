Class {
	#name : #GBPFieldOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#packed => (PBTypeBool asSlot fieldName: \'packaged\'; fieldNumber: 2; beOptional)',
		'#deprecated => (PBTypeBool asSlot fieldName: \'deprecated\'; fieldNumber: 3; beOptional; defaultValue: false)'
	],
	#category : #'Protobuf-Compiler-Definitions'
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
