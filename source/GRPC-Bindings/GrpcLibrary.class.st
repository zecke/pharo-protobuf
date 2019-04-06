Class {
	#name : #GrpcLibrary,
	#superclass : #FFILibrary,
	#category : #'GRPC-Bindings'
}

{ #category : #'private-initialization' }
GrpcLibrary class >> init [
	self ffiCall: #(void grpc_init(void))
]

{ #category : #'accessing platform' }
GrpcLibrary >> init [
	self ffiCall: #(void grpc_init(void))
]

{ #category : #'accessing platform' }
GrpcLibrary >> macModuleName [
	^'/usr/local/lib/libgrpc.dylib'
]
