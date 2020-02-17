"
I represent ""transient"" data of a registered call. This will include the native handle of the method and potentially the descriptor.
"
Class {
	#name : #GrpcRegisteredCallData,
	#superclass : #Object,
	#instVars : [
		'methodHandle',
		'deadline',
		'initial_metatadata'
	],
	#category : #'GRPC-Pharo'
}
