Class {
	#name : #GrpcCall,
	#superclass : #FFIExternalObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings'
}

{ #category : #dependencies }
GrpcCall >> release [
	handle ifNotNil: [self unref].
]

{ #category : #'as yet unclassified' }
GrpcCall >> unref [
	self ffiCall: 'void grpc_call_unref(self)'
]
