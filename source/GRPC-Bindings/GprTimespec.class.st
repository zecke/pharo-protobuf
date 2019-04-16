Class {
	#name : #GprTimespec,
	#superclass : #FFIExternalStructure,
	#traits : 'TGrpcCalloutLibrary',
	#classTraits : 'TGrpcCalloutLibrary classTrait',
	#classVars : [
		'OFFSET_CLOCK_TYPE',
		'OFFSET_TV_NSEC',
		'OFFSET_TV_SEC'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'library path' }
GprTimespec class >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'field definition' }
GprTimespec class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
		int64 tv_sec;
		int32 tv_nsec;
		GprClockType clock_type;
		)
]

{ #category : #'instance creation' }
GprTimespec class >> fromDuration: aDuration type: aType [
	^self fromNanos: aDuration asNanoSeconds type: aType
]

{ #category : #'instance creation' }
GprTimespec class >> fromNanos: nanos type: aType [
	^self ffiCall: 'GprTimespec gpr_time_from_nanos(int64 nanos, GprClockType aType)'
]

{ #category : #'as yet unclassified' }
GprTimespec class >> infiniteFuture: aType [
	^self ffiCall: 'GprTimespec gpr_inf_future(GprClockType aType)'
]

{ #category : #'as yet unclassified' }
GprTimespec class >> infinitePast: aType [
	^self ffiCall: 'GprTimespec gpr_inf_past(GprClockType aType)'
]

{ #category : #'as yet unclassified' }
GprTimespec class >> now: aType [
	^self ffiCall: 'GprTimespec gpr_now(GprClockType aType)'
]

{ #category : #'as yet unclassified' }
GprTimespec class >> zero: aType [
	^self ffiCall: 'GprTimespec gpr_time_0(GprClockType aType)'
]

{ #category : #arithmetic }
GprTimespec >> + aGprTimeSpec [
	^self time_add: aGprTimeSpec
]

{ #category : #arithmetic }
GprTimespec >> - aGprTimeSpec [
	^self time_sub: aGprTimeSpec
]

{ #category : #'accessing structure variables' }
GprTimespec >> clock_type [
	"This method was automatically generated"
	^GprClockType fromInteger: (handle unsignedLongAt: OFFSET_CLOCK_TYPE)
]

{ #category : #'accessing structure variables' }
GprTimespec >> clock_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CLOCK_TYPE put: anObject value
]

{ #category : #'as yet unclassified' }
GprTimespec >> convertClockType: aTargetType [
	^self ffiCall: 'GprTimespec gpr_convert_clock_type(self, GprClockType aTargetType)'
]

{ #category : #arithmetic }
GprTimespec >> time_add: aTimeSpec [
	^self ffiCall: 'GprTimespec gpr_time_add(GprTimespec self, GprTimespec aTimeSpec)'
]

{ #category : #arithmetic }
GprTimespec >> time_sub: aTimeSpec [
	^self ffiCall: 'GprTimespec gpr_time_sub(GprTimespec self, GprTimespec aTimeSpec)'
]

{ #category : #'accessing structure variables' }
GprTimespec >> tv_nsec [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TV_NSEC
]

{ #category : #'accessing structure variables' }
GprTimespec >> tv_nsec: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TV_NSEC put: anObject
]

{ #category : #'accessing structure variables' }
GprTimespec >> tv_sec [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_TV_SEC
]

{ #category : #'accessing structure variables' }
GprTimespec >> tv_sec: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_TV_SEC put: anObject
]
