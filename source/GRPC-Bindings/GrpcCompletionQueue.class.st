Class {
	#name : #GrpcCompletionQueue,
	#superclass : #FFIExternalObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
GrpcCompletionQueue class >> ffiLibraryName [
	^self ffiLibrary 
]

{ #category : #accessing }
GrpcCompletionQueue class >> next [
	^(self ffiCall: 'GrpcCompletionQueue grpc_completion_queue_create_for_next(nil)')
		autoRelease
]

{ #category : #deleting }
GrpcCompletionQueue >> destroy [
	self ffiCall: 'void grpc_completion_queue_destroy(self)'
]

{ #category : #'initialize-release' }
GrpcCompletionQueue >> free [
	"Free the handle pointed to by the receiver"
	handle := nil.
]

{ #category : #accessing }
GrpcCompletionQueue >> next: aTimeSpec [
	^self ffiCall: 'GrpcEvent grpc_completion_queue_next(self, GprTimespec aTimeSpec, nil)'
]

{ #category : #'library path' }
GrpcCompletionQueue >> release [
	self shutdown.
	self destroy.
	self free.
]

{ #category : #deleting }
GrpcCompletionQueue >> shutdown [
	self ffiCall: 'void grpc_completion_queue_shutdown(self)'
]
