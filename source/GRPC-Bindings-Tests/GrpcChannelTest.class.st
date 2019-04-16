"
A GrpcChannelTest is a test class for testing the behavior of GrpcChannel
"
Class {
	#name : #GrpcChannelTest,
	#superclass : #TestCase,
	#category : #'GRPC-Bindings-Tests'
}

{ #category : #tests }
GrpcChannelTest >> testGetTarget [
	| channel target |
	channel := GrpcChannel newInsecure: 'tcp://localhost:6666'.
	target := channel getTarget.
	self assert: target equals: 'tcp://localhost:6666'.
	channel release.
]

{ #category : #tests }
GrpcChannelTest >> testInsecureCreateAndDestroy_noCrash [
	| channel |
	channel := GrpcChannel newInsecure: 'tcp://localhost:6666'.
	channel release.
]
