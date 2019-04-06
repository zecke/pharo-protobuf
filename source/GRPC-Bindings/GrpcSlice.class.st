"
ffiLibraryName
	^GrpcLibrary
"
Class {
	#name : #GrpcSlice,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_REFCOUNT'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'library path' }
GrpcSlice class >> ffiLibraryName [
	^GrpcLibrary
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
	self primSliceUnref: aSlice.
]

{ #category : #finalization }
GrpcSlice class >> primSliceCreate: aByteArray size: aSize [
	^self ffiCall: #(GrpcSlice grpc_slice_from_copied_buffer(char *aByteArray, size_t aSize))
]

{ #category : #finalization }
GrpcSlice class >> primSliceUnref: aSlice [
	self ffiCall: #(void grpc_slice_unref(GrpcSlice aSlice))
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
GrpcSlice >> ffiLibraryName [
	^GrpcLibrary
]

{ #category : #'as yet unclassified' }
GrpcSlice >> initialize [
	super initialize.
	self autoRelease.
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

{ #category : #'as yet unclassified' }
GrpcSlice >> resourceData [
	^self
]

{ #category : #'as yet unclassified' }
GrpcSlice >> unref [
	self class primSliceUnref: self.
	"Safety feature and turn this into an inlined version"
	self refcount: (ExternalData fromHandle: ExternalAddress new type: ExternalType void asPointerType).
	self data inlined length: 0.
]
