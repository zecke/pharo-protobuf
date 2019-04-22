"
A GrpcServerTest is a test class for testing the behavior of GrpcServer
"
Class {
	#name : #GrpcServerTest,
	#superclass : #TestCase,
	#category : #'GRPC-Bindings-Tests'
}

{ #category : #tests }
GrpcServerTest >> testLifeCycle [
	| server |
	server := GrpcServer create.
	self deny: server getHandle isNull.
	server add_insecure_http2_port: '0.0.0.0:8721'.
	server queue: GrpcLibrary uniqueInstance completionQueue.
	server start.

	server releaseData.
	self assert: server getHandle isNil.
	server releaseData.

]
