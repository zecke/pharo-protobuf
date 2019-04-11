Class {
	#name : #GprClockType,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GPR_CLOCK_MONOTONIC',
		'GPR_CLOCK_PRECISE',
		'GPR_CLOCK_REALTIME',
		'GPR_TIMESPAN'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'accessing enum' }
GprClockType class >> GPR_CLOCK_MONOTONIC [
	"This method was automatically generated"
	^ GPR_CLOCK_MONOTONIC
]

{ #category : #'accessing enum' }
GprClockType class >> GPR_CLOCK_PRECISE [
	"This method was automatically generated"
	^ GPR_CLOCK_PRECISE
]

{ #category : #'accessing enum' }
GprClockType class >> GPR_CLOCK_REALTIME [
	"This method was automatically generated"
	^ GPR_CLOCK_REALTIME
]

{ #category : #'accessing enum' }
GprClockType class >> GPR_TIMESPAN [
	"This method was automatically generated"
	^ GPR_TIMESPAN
]

{ #category : #'class initialization' }
GprClockType class >> enumDecl [
	"GprClockType rebuildEnumAccessors."
	^ #(GPR_CLOCK_MONOTONIC 0
	GPR_CLOCK_REALTIME 1
	GPR_CLOCK_PRECISE 2
	GPR_TIMESPAN 3)
]

{ #category : #'class initialization' }
GprClockType class >> initialize [
	self initializeEnumeration
]
