"
ffiLibraryName
	^GrpcLibrary
"
Class {
	#name : #GrpcSlice,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_REFCOUNT'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
GrpcSlice class >> externalEmpty [
	| empty external |
	empty := #[] asGrpcSlice.
	external := self externalNew.
	1 to: self byteSize do: [:idx |
		external getHandle byteAt: idx put: (empty getHandle byteAt: idx) ].
	^external
]

{ #category : #'field definition' }
GrpcSlice class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
		void* refcount;
		GrpcSliceData data;
		)
]

{ #category : #finalization }
GrpcSlice class >> finalizeResourceData: aSlice [
	aSlice release.
]

{ #category : #finalization }
GrpcSlice class >> primSliceCreate: aByteArray size: aSize [
	^(self ffiCall: #(GrpcSlice grpc_slice_from_copied_buffer(char *aByteArray, size_t aSize)))
		autoRelease
]

{ #category : #finalization }
GrpcSlice class >> primSliceRef: aSlice [
	self ffiCall: #(GrpcSlice grpc_slice_ref(GrpcSlice aSlice))
]

{ #category : #finalization }
GrpcSlice class >> primSliceUnref: aSlice [
	self ffiCall: #(void grpc_slice_unref(GrpcSlice aSlice))
]

{ #category : #converting }
GrpcSlice >> asByteArray [
	^self refcount isNull
		ifTrue: [
			| inlined |
			inlined := self data inlined.
			inlined data getHandle copyFrom: 1 to: inlined length ]
		ifFalse: [
			| refcounted |
			refcounted := self data refcounted.
			refcounted bytes copyFrom: 1 to: refcounted length ].
]

{ #category : #converting }
GrpcSlice >> asGrpcByteArray [
	| array |
	array := FFIExternalArray externalNewType: GrpcSlice size: 1.
	^[ 
		array at: 1 put: self.
		GrpcByteBuffer createRaw: array getHandle size: 1.
	] ensure: [ array free ]
]

{ #category : #'as yet unclassified' }
GrpcSlice >> autoRelease [
	FFIExternalResourceManager addResource: self
]

{ #category : #'accessing structure variables' }
GrpcSlice >> data [
	"This method was automatically generated"
	^ GrpcSliceData fromHandle: (handle referenceStructAt: OFFSET_DATA length: GrpcSliceData byteSize)
]

{ #category : #'accessing structure variables' }
GrpcSlice >> data: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DATA put: anObject getHandle length: GrpcSliceData byteSize
]

{ #category : #'as yet unclassified' }
GrpcSlice >> ref [
	^self class primSliceRef: self
]

{ #category : #'accessing structure variables' }
GrpcSlice >> refcount [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_REFCOUNT) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
GrpcSlice >> refcount: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_REFCOUNT put: anObject getHandle.
]

{ #category : #dependencies }
GrpcSlice >> release [
	self unref.
	self free.
]

{ #category : #'as yet unclassified' }
GrpcSlice >> resourceData [
	^self
]

{ #category : #'as yet unclassified' }
GrpcSlice >> sliceCopy [
	^self ref
		autoRelease
]

{ #category : #'as yet unclassified' }
GrpcSlice >> unref [
	self class primSliceUnref: self.
	self refcount: (ExternalData fromHandle: ExternalAddress null type: 'void*')
]
