Class {
	#name : #GrpcMetadata,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_FLAGS',
		'OFFSET_KEY',
		'OFFSET_OBFUSCATED',
		'OFFSET_VALUE',
		'Obfuscated4'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcMetadata class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		GrpcSlice key;
		GrpcSlice value;
		uint32 flags;
		Obfuscated4 obfuscated;
		)
]

{ #category : #'class initialization' }
GrpcMetadata class >> initialize [
	Obfuscated4 := FFITypeArray ofType: #'void*' size: 4.
]

{ #category : #'accessing structure variables' }
GrpcMetadata >> flags [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FLAGS
]

{ #category : #'accessing structure variables' }
GrpcMetadata >> flags: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FLAGS put: anObject
]

{ #category : #'accessing structure variables' }
GrpcMetadata >> key [
	"This method was automatically generated"
	^ GrpcSlice fromHandle: (handle referenceStructAt: OFFSET_KEY length: GrpcSlice byteSize)
]

{ #category : #'accessing structure variables' }
GrpcMetadata >> key: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_KEY put: anObject getHandle length: GrpcSlice byteSize
]

{ #category : #'accessing structure variables' }
GrpcMetadata >> obfuscated [
	"This method was automatically generated"
	^(FFITypeArray ofType: 'void*' size: 4) fromHandle: (handle copyFrom: OFFSET_OBFUSCATED to: OFFSET_OBFUSCATED + 31)
]

{ #category : #'accessing structure variables' }
GrpcMetadata >> obfuscated: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_OBFUSCATED to: OFFSET_OBFUSCATED + 31 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing structure variables' }
GrpcMetadata >> value [
	"This method was automatically generated"
	^ GrpcSlice fromHandle: (handle referenceStructAt: OFFSET_VALUE length: GrpcSlice byteSize)
]

{ #category : #'accessing structure variables' }
GrpcMetadata >> value: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_VALUE put: anObject getHandle length: GrpcSlice byteSize
]
