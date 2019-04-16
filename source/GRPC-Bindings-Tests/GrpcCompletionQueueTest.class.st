"
A GrpcCompletionQueueTest is a test class for testing the behavior of GrpcCompletionQueue
"
Class {
	#name : #GrpcCompletionQueueTest,
	#superclass : #TestCase,
	#category : #'GRPC-Bindings-Tests'
}

{ #category : #tests }
GrpcCompletionQueueTest >> testNewQueue_creation [
	| queue |
	queue := GrpcCompletionQueue next.
	queue release.
]

{ #category : #tests }
GrpcCompletionQueueTest >> testNext_noWait_success [
	| queue res |
	queue := GrpcCompletionQueue next.
	res := queue next: (GprTimespec zero: GprClockType GPR_TIMESPAN).

	self assert: res success equals: 0.
	self assert: res tag getHandle equals: ExternalAddress null.
	self assert: res type equals: GrpcCompletionType GRPC_QUEUE_TIMEOUT.

	"Give up the memory"
	queue release.
]
