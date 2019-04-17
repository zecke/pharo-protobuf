Class {
	#name : #GrpcOpBase,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'as yet unclassified' }
GrpcOpBase >> asGrpcOp [
	^GrpcOp new
		flags: 0;
		reserved: (ExternalData fromHandle: ExternalAddress null);
		op: self class grpcOp;
		copyDataFrom: self;
		yourself
		
]
