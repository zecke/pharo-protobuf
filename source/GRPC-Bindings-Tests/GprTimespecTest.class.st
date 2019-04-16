"
A GprTimespecTest is a test class for testing the behavior of GprTimespec
"
Class {
	#name : #GprTimespecTest,
	#superclass : #TestCase,
	#category : #'GRPC-Bindings-Tests'
}

{ #category : #tests }
GprTimespecTest >> testAddition_working [
	| timeSpec |
	timeSpec :=
		(GprTimespec fromDuration: (Duration milliSeconds: 800) type: GprClockType GPR_CLOCK_MONOTONIC)
			+
		(GprTimespec fromDuration: (Duration milliSeconds: 202) type: GprClockType GPR_TIMESPAN).
	self assert: timeSpec clock_type equals: GprClockType GPR_CLOCK_MONOTONIC.
	self assert: timeSpec tv_nsec equals: 2000000.
	self assert: timeSpec tv_sec equals: 1.
]

{ #category : #tests }
GprTimespecTest >> testDuration_fromMillis_correct [
	| timeSpec |
	timeSpec := GprTimespec fromDuration: (Duration milliSeconds: 2) type: GprClockType GPR_CLOCK_REALTIME.
	self assert: timeSpec clock_type equals: GprClockType GPR_CLOCK_REALTIME.
	self assert: timeSpec tv_nsec equals: 2000000.
	self assert: timeSpec tv_sec equals: 0.
]

{ #category : #tests }
GprTimespecTest >> testSubstraction_working [
	| timeSpec |
	timeSpec :=
		(GprTimespec fromDuration: (Duration milliSeconds: 2) type: GprClockType GPR_CLOCK_MONOTONIC)
			-
		(GprTimespec fromDuration: (Duration milliSeconds: 1) type: GprClockType GPR_TIMESPAN).
	self assert: timeSpec clock_type equals: GprClockType GPR_CLOCK_MONOTONIC.
	self assert: timeSpec tv_nsec equals: 1000000.
	self assert: timeSpec tv_sec equals: 0.
]

{ #category : #tests }
GprTimespecTest >> testZero_created [
	| timeSpec |
	timeSpec := GprTimespec zero: GprClockType GPR_CLOCK_PRECISE.
	self assert: timeSpec clock_type equals: GprClockType GPR_CLOCK_PRECISE.
	self assert: timeSpec tv_nsec equals: 0.
	self assert: timeSpec tv_sec equals: 0.
]
