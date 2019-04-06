Class {
	#name : #GrpcSliceData,
	#superclass : #FFIExternalUnion,
	#category : #'GRPC-Bindings'
}

{ #category : #'field definition' }
GrpcSliceData class >> fieldsDesc [
	^#(
		GrpcSliceRefcounted refcounted;
		GrpcSliceInlined inlined;
		)
]

{ #category : #'accessing structure variables' }
GrpcSliceData >> inlined [
	"This method was automatically generated"
	^ GrpcSliceInlined fromHandle: (handle referenceStructAt: 1 length: GrpcSliceInlined byteSize)
]

{ #category : #'accessing structure variables' }
GrpcSliceData >> inlined: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 24.
]

{ #category : #'accessing structure variables' }
GrpcSliceData >> refcounted [
	"This method was automatically generated"
	^ GrpcSliceRefcounted fromHandle: (handle referenceStructAt: 1 length: GrpcSliceRefcounted byteSize)
]

{ #category : #'accessing structure variables' }
GrpcSliceData >> refcounted: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]
