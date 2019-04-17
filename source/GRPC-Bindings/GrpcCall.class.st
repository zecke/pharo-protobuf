Class {
	#name : #GrpcCall,
	#superclass : #FFIOpaqueObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings'
}

{ #category : #'library path' }
GrpcCall class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #dependencies }
GrpcCall >> releaseData [
	handle ifNotNil: [self unref].
	handle := nil.
]

{ #category : #'as yet unclassified' }
GrpcCall >> start_batch: ops size: nops tag: tag [ 
	^self ffiCall: 'GrpcCallError grpc_call_start_batch(self, GrpcOpArray* ops, size_t nops, void* tag, nil)'
]

{ #category : #'as yet unclassified' }
GrpcCall >> unref [
	self ffiCall: 'void grpc_call_unref(self)'
]
