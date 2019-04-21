Class {
	#name : #GrpcCallError,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GRPC_CALL_ERROR',
		'GRPC_CALL_ERROR_ALREADY_ACCEPTED',
		'GRPC_CALL_ERROR_ALREADY_FINISHED',
		'GRPC_CALL_ERROR_ALREADY_INVOKED',
		'GRPC_CALL_ERROR_BATCH_TOO_BIG',
		'GRPC_CALL_ERROR_COMPLETION_QUEUE_SHUTDOWN',
		'GRPC_CALL_ERROR_INVALID_FLAGS',
		'GRPC_CALL_ERROR_INVALID_MESSAGE',
		'GRPC_CALL_ERROR_INVALID_METADATA',
		'GRPC_CALL_ERROR_NOT_INVOKED',
		'GRPC_CALL_ERROR_NOT_ON_CLIENT',
		'GRPC_CALL_ERROR_NOT_ON_SERVER',
		'GRPC_CALL_ERROR_NOT_SERVER_COMPLETION_QUEUE',
		'GRPC_CALL_ERROR_PAYLOAD_TYPE_MISMATCH',
		'GRPC_CALL_ERROR_TOO_MANY_OPERATIONS',
		'GRPC_CALL_OK'
	],
	#category : #'GRPC-Bindings'
}

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_ALREADY_ACCEPTED [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_ALREADY_ACCEPTED
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_ALREADY_FINISHED [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_ALREADY_FINISHED
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_ALREADY_INVOKED [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_ALREADY_INVOKED
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_BATCH_TOO_BIG [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_BATCH_TOO_BIG
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_COMPLETION_QUEUE_SHUTDOWN [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_COMPLETION_QUEUE_SHUTDOWN
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_INVALID_FLAGS [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_INVALID_FLAGS
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_INVALID_MESSAGE [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_INVALID_MESSAGE
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_INVALID_METADATA [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_INVALID_METADATA
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_NOT_INVOKED [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_NOT_INVOKED
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_NOT_ON_CLIENT [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_NOT_ON_CLIENT
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_NOT_ON_SERVER [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_NOT_ON_SERVER
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_NOT_SERVER_COMPLETION_QUEUE [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_NOT_SERVER_COMPLETION_QUEUE
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_PAYLOAD_TYPE_MISMATCH [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_PAYLOAD_TYPE_MISMATCH
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_ERROR_TOO_MANY_OPERATIONS [
	"This method was automatically generated"
	^ GRPC_CALL_ERROR_TOO_MANY_OPERATIONS
]

{ #category : #'accessing enum' }
GrpcCallError class >> GRPC_CALL_OK [
	"This method was automatically generated"
	^ GRPC_CALL_OK
]

{ #category : #'enum declaration' }
GrpcCallError class >> enumDecl [
" Result of a grpc call. If the caller satisfies the prerequisites of a
    particular operation the grpc_call_error returned will be GRPC_CALL_OK.
    Receiving any other value listed here is an indication of a bug in the
    caller."
  " everything went ok "
	^ #(
  GRPC_CALL_OK 0
  " something failed we don't know what "
  GRPC_CALL_ERROR 1
  " this method is not available on the server "
  GRPC_CALL_ERROR_NOT_ON_SERVER 2
  " this method is not available on the client "
  GRPC_CALL_ERROR_NOT_ON_CLIENT 3
  " this method must be called before server_accept "
  GRPC_CALL_ERROR_ALREADY_ACCEPTED 4
  " this method must be called before invoke "
  GRPC_CALL_ERROR_ALREADY_INVOKED 5
  " this method must be called after invoke "
  GRPC_CALL_ERROR_NOT_INVOKED 6
  " this call is already finished
      (writes_done or write_status has already been called) "
  GRPC_CALL_ERROR_ALREADY_FINISHED 7
  " there is already an outstanding read/write operation on the call "
  GRPC_CALL_ERROR_TOO_MANY_OPERATIONS 8
  " the flags value was illegal for this call "
  GRPC_CALL_ERROR_INVALID_FLAGS 9
  " invalid metadata was passed to this call "
  GRPC_CALL_ERROR_INVALID_METADATA 10
  " invalid message was passed to this call "
  GRPC_CALL_ERROR_INVALID_MESSAGE 11
  " completion queue for notification has not been registered
   * with the server "
  GRPC_CALL_ERROR_NOT_SERVER_COMPLETION_QUEUE 12
  " this batch of operations leads to more operations than allowed "
  GRPC_CALL_ERROR_BATCH_TOO_BIG 13
  " payload type requested is not the type registered "
  GRPC_CALL_ERROR_PAYLOAD_TYPE_MISMATCH 14
  " completion queue has been shutdown "
  GRPC_CALL_ERROR_COMPLETION_QUEUE_SHUTDOWN 15
)
]

{ #category : #'class initialization' }
GrpcCallError class >> initialize [
	self initializeEnumeration
]
