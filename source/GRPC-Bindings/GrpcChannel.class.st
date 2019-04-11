Class {
	#name : #GrpcChannel,
	#superclass : #FFIExternalObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings'
}

{ #category : #'library path' }
GrpcChannel class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'as yet unclassified' }
GrpcChannel >> createCall [
	^(self ffiCall: 'GrpcCall* ')
		autoRelease
]

{ #category : #'library path' }
GrpcChannel >> destroy [
	self ffiCall: 'void grpc_channel_destroy(self)'
]

{ #category : #'initialize-release' }
GrpcChannel >> free [
	"Free the handle pointed to by the receiver"
	(handle ~~ nil and:[handle isExternalAddress]) ifTrue:[
		self class primByteBufferDestroy: self].
	handle := nil.
]

{ #category : #dependencies }
GrpcChannel >> release [
	handle ifNotNil: [self destroy].
	self free.
]
