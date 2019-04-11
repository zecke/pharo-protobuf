Class {
	#name : #GrpcOpData,
	#superclass : #FFIExternalUnion,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'Reserved8'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpData class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		Reserved8 reserved;
		GrpcOpSendInitialMetadata send_initial_metadata;
		GrpcOpSendMessage send_message;
		GrpcOpSendStatusFromServer send_status_from_server;
		GrpcOpRecvInitialMetadata recv_initial_metadata;
		GrpcOpRecvMessage recv_message;
		GrpcOpRecvStatusOnClient recv_status_on_client;
		GrpcOpRecvCloseOnServer recv_close_on_server;
		)
]

{ #category : #'class initialization' }
GrpcOpData class >> initialize [
	Reserved8 := FFITypeArray ofType: #'void*' size: 8.
]

{ #category : #'accessing structure variables' }
GrpcOpData >> recv_close_on_server [
	"This method was automatically generated"
	^ GrpcOpRecvCloseOnServer fromHandle: (handle referenceStructAt: 1 length: GrpcOpRecvCloseOnServer byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOpData >> recv_close_on_server: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
GrpcOpData >> recv_initial_metadata [
	"This method was automatically generated"
	^ GrpcOpRecvInitialMetadata fromHandle: (handle referenceStructAt: 1 length: GrpcOpRecvInitialMetadata byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOpData >> recv_initial_metadata: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
GrpcOpData >> recv_message [
	"This method was automatically generated"
	^ GrpcOpRecvMessage fromHandle: (handle referenceStructAt: 1 length: GrpcOpRecvMessage byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOpData >> recv_message: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
GrpcOpData >> recv_status_on_client [
	"This method was automatically generated"
	^ GrpcOpRecvStatusOnClient fromHandle: (handle referenceStructAt: 1 length: GrpcOpRecvStatusOnClient byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOpData >> recv_status_on_client: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 32.
]

{ #category : #'accessing structure variables' }
GrpcOpData >> reserved [
	"This method was automatically generated"
	^(FFITypeArray ofType: 'void*' size: 8) fromHandle: (handle copyFrom: 1 to: 64)
]

{ #category : #'accessing structure variables' }
GrpcOpData >> reserved: anObject [
	"This method was automatically generated"
	handle replaceFrom: 1 to: 64 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing structure variables' }
GrpcOpData >> send_initial_metadata [
	"This method was automatically generated"
	^ GrpcOpSendInitialMetadata fromHandle: (handle referenceStructAt: 1 length: GrpcOpSendInitialMetadata byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOpData >> send_initial_metadata: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 24.
]

{ #category : #'accessing structure variables' }
GrpcOpData >> send_message [
	"This method was automatically generated"
	^ GrpcOpSendMessage fromHandle: (handle referenceStructAt: 1 length: GrpcOpSendMessage byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOpData >> send_message: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
GrpcOpData >> send_status_from_server [
	"This method was automatically generated"
	^ GrpcOpSendStatusFromServer fromHandle: (handle referenceStructAt: 1 length: GrpcOpSendStatusFromServer byteSize)
]

{ #category : #'accessing structure variables' }
GrpcOpData >> send_status_from_server: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 0.
]
