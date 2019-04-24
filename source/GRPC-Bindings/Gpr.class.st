Class {
	#name : #Gpr,
	#superclass : #Object,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings'
}

{ #category : #'library path' }
Gpr class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'library path' }
Gpr class >> free: aHandle [
	^self ffiCall: 'void gpr_free(void* aHandle)'
]
