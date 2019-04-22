Class {
	#name : #GrpcServer,
	#superclass : #FFIOpaqueObject,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#instVars : [
		'queue'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
GrpcServer class >> create [
	^self ffiCall: 'GrpcServer* grpc_server_create(nil, nil)'
]

{ #category : #'as yet unclassified' }
GrpcServer class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'as yet unclassified' }
GrpcServer >> add_insecure_http2_port: hostnameAndPort [
	^self ffiCall: 'int grpc_server_add_insecure_http2_port(self, const char* hostnameAndPort)'
]

{ #category : #'as yet unclassified' }
GrpcServer >> cancel_all_calls [
	^self ffiCall: 'void grpc_server_cancel_all_calls(self)'
]

{ #category : #'as yet unclassified' }
GrpcServer >> destroy [
	^self ffiCall: 'void grpc_server_destroy(self)'
]

{ #category : #'as yet unclassified' }
GrpcServer >> queue: aGrpcCompletionQueue [ 
	queue := aGrpcCompletionQueue.
	self register_completion_queue: queue.
]

{ #category : #'as yet unclassified' }
GrpcServer >> register_completion_queue: queue [ 
	^self ffiCall: 'void grpc_server_register_completion_queue(self, GrpcCompletionQueue* queue, nil)'
]

{ #category : #'as yet unclassified' }
GrpcServer >> releaseData [
	| tag |
	"Shutdown the server"
	tag := queue nextTag.
	self shutdown_and_notify: queue tag: tag handle.
	tag waitForCompletion.

	self cancel_all_calls.
	self destroy.
	handle := nil.
]

{ #category : #'as yet unclassified' }
GrpcServer >> shutdown_and_notify: queue tag: aTag [
	^self ffiCall: 'void grpc_server_shutdown_and_notify(self, GrpcCompletionQueue* queue, void* aTag)'
]

{ #category : #'as yet unclassified' }
GrpcServer >> start [
	^self ffiCall: 'void grpc_server_start(self)'
]
