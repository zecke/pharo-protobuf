Class {
	#name : #GrpcStatusCode,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'GRPC_STATUS_ABORTED',
		'GRPC_STATUS_ALREADY_EXISTS',
		'GRPC_STATUS_CANCELLED',
		'GRPC_STATUS_DATA_LOSS',
		'GRPC_STATUS_DEADLINE_EXCEEDED',
		'GRPC_STATUS_FAILED_PRECONDITION',
		'GRPC_STATUS_INTERNAL',
		'GRPC_STATUS_INVALID_ARGUMENT',
		'GRPC_STATUS_NOT_FOUND',
		'GRPC_STATUS_OK',
		'GRPC_STATUS_OUT_OF_RANGE',
		'GRPC_STATUS_PERMISSION_DENIED',
		'GRPC_STATUS_RESOURCE_EXHAUSTED',
		'GRPC_STATUS_UNAUTHENTICATED',
		'GRPC_STATUS_UNAVAILABLE',
		'GRPC_STATUS_UNIMPLEMENTED',
		'GRPC_STATUS_UNKNOWN',
		'GRPC_STATUS__DO_NOT_USE'
	],
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_ABORTED [
	"This method was automatically generated"
	^ GRPC_STATUS_ABORTED
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_ALREADY_EXISTS [
	"This method was automatically generated"
	^ GRPC_STATUS_ALREADY_EXISTS
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_CANCELLED [
	"This method was automatically generated"
	^ GRPC_STATUS_CANCELLED
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_DATA_LOSS [
	"This method was automatically generated"
	^ GRPC_STATUS_DATA_LOSS
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_DEADLINE_EXCEEDED [
	"This method was automatically generated"
	^ GRPC_STATUS_DEADLINE_EXCEEDED
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_FAILED_PRECONDITION [
	"This method was automatically generated"
	^ GRPC_STATUS_FAILED_PRECONDITION
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_INTERNAL [
	"This method was automatically generated"
	^ GRPC_STATUS_INTERNAL
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_INVALID_ARGUMENT [
	"This method was automatically generated"
	^ GRPC_STATUS_INVALID_ARGUMENT
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_NOT_FOUND [
	"This method was automatically generated"
	^ GRPC_STATUS_NOT_FOUND
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_OK [
	"This method was automatically generated"
	^ GRPC_STATUS_OK
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_OUT_OF_RANGE [
	"This method was automatically generated"
	^ GRPC_STATUS_OUT_OF_RANGE
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_PERMISSION_DENIED [
	"This method was automatically generated"
	^ GRPC_STATUS_PERMISSION_DENIED
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_RESOURCE_EXHAUSTED [
	"This method was automatically generated"
	^ GRPC_STATUS_RESOURCE_EXHAUSTED
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_UNAUTHENTICATED [
	"This method was automatically generated"
	^ GRPC_STATUS_UNAUTHENTICATED
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_UNAVAILABLE [
	"This method was automatically generated"
	^ GRPC_STATUS_UNAVAILABLE
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_UNIMPLEMENTED [
	"This method was automatically generated"
	^ GRPC_STATUS_UNIMPLEMENTED
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS_UNKNOWN [
	"This method was automatically generated"
	^ GRPC_STATUS_UNKNOWN
]

{ #category : #'accessing enum' }
GrpcStatusCode class >> GRPC_STATUS__DO_NOT_USE [
	"This method was automatically generated"
	^ GRPC_STATUS__DO_NOT_USE
]

{ #category : #'enum declaration' }
GrpcStatusCode class >> enumDecl [
	"self rebuildEnumAccessors."
	^ #(
  " Not an error; returned on success "
  GRPC_STATUS_OK 0

  " The operation was cancelled (typically by the caller). "
  GRPC_STATUS_CANCELLED 1

  " Unknown error.  An example of where this error may be returned is
     if a Status value received from another address space belongs to
     an error-space that is not known in this address space.  Also
     errors raised by APIs that do not return enough error information
     may be converted to this error. "
  GRPC_STATUS_UNKNOWN 2

  " Client specified an invalid argument.  Note that this differs
     from FAILED_PRECONDITION.  INVALID_ARGUMENT indicates arguments
     that are problematic regardless of the state of the system
     (e.g., a malformed file name). "
  GRPC_STATUS_INVALID_ARGUMENT 3

  " Deadline expired before operation could complete.  For operations
     that change the state of the system, this error may be returned
     even if the operation has completed successfully.  For example, a
     successful response from a server could have been delayed long
     enough for the deadline to expire. "
  GRPC_STATUS_DEADLINE_EXCEEDED 4

  " Some requested entity (e.g., file or directory) was not found. "
  GRPC_STATUS_NOT_FOUND 5

  " Some entity that we attempted to create (e.g., file or directory)
     already exists. "
  GRPC_STATUS_ALREADY_EXISTS 6

  " The caller does not have permission to execute the specified
     operation.  PERMISSION_DENIED must not be used for rejections
     caused by exhausting some resource (use RESOURCE_EXHAUSTED
     instead for those errors).  PERMISSION_DENIED must not be
     used if the caller can not be identified (use UNAUTHENTICATED
     instead for those errors). "
  GRPC_STATUS_PERMISSION_DENIED 7

  " The request does not have valid authentication credentials for the
     operation. "
  GRPC_STATUS_UNAUTHENTICATED 16

  " Some resource has been exhausted, perhaps a per-user quota, or
     perhaps the entire file system is out of space. "
  GRPC_STATUS_RESOURCE_EXHAUSTED 8

  " Operation was rejected because the system is not in a state
     required for the operation's execution.  For example, directory
     to be deleted may be non-empty, an rmdir operation is applied to
     a non-directory, etc.

     A litmus test that may help a service implementor in deciding
     between FAILED_PRECONDITION, ABORTED, and UNAVAILABLE:
      (a) Use UNAVAILABLE if the client can retry just the failing call.
      (b) Use ABORTED if the client should retry at a higher-level
          (e.g., restarting a read-modify-write sequence).
      (c) Use FAILED_PRECONDITION if the client should not retry until
          the system state has been explicitly fixed.  E.g., if an 'rmdir'
          fails because the directory is non-empty, FAILED_PRECONDITION
          should be returned since the client should not retry unless
          they have first fixed up the directory by deleting files from it.
      (d) Use FAILED_PRECONDITION if the client performs conditional
          REST Get/Update/Delete on a resource and the resource on the
          server does not match the condition. E.g., conflicting
          read-modify-write on the same resource. "
  GRPC_STATUS_FAILED_PRECONDITION 9

  " The operation was aborted, typically due to a concurrency issue
     like sequencer check failures, transaction aborts, etc.

     See litmus test above for deciding between FAILED_PRECONDITION,
     ABORTED, and UNAVAILABLE. "
  GRPC_STATUS_ABORTED 10

  " Operation was attempted past the valid range.  E.g., seeking or
     reading past end of file.

     Unlike INVALID_ARGUMENT, this error indicates a problem that may
     be fixed if the system state changes. For example, a 32-bit file
     system will generate INVALID_ARGUMENT if asked to read at an
     offset that is not in the range [0,2^32-1], but it will generate
     OUT_OF_RANGE if asked to read from an offset past the current
     file size.

     There is a fair bit of overlap between FAILED_PRECONDITION and
     OUT_OF_RANGE.  We recommend using OUT_OF_RANGE (the more specific
     error) when it applies so that callers who are iterating through
     a space can easily look for an OUT_OF_RANGE error to detect when
     they are done. "
  GRPC_STATUS_OUT_OF_RANGE 11

  " Operation is not implemented or not supported/enabled in this service. "
  GRPC_STATUS_UNIMPLEMENTED 12

  " Internal errors.  Means some invariants expected by underlying
     system has been broken.  If you see one of these errors,
     something is very broken. "
  GRPC_STATUS_INTERNAL 13

  " The service is currently unavailable.  This is a most likely a
     transient condition and may be corrected by retrying with
     a backoff.

     WARNING: Although data MIGHT not have been transmitted when this
     status occurs, there is NOT A GUARANTEE that the server has not seen
     anything. So in general it is unsafe to retry on this status code
     if the call is non-idempotent.

     See litmus test above for deciding between FAILED_PRECONDITION,
     ABORTED, and UNAVAILABLE. "
  GRPC_STATUS_UNAVAILABLE 14

  " Unrecoverable data loss or corruption. "
  GRPC_STATUS_DATA_LOSS 15

  " Force users to include a default branch: "
  GRPC_STATUS__DO_NOT_USE -1)
]

{ #category : #'as yet unclassified' }
GrpcStatusCode class >> externalNew [
	^ExternalData fromHandle: (ExternalAddress allocate: ExternalType long byteSize) type: ExternalType long
]

{ #category : #'class initialization' }
GrpcStatusCode class >> initialize [
	self initializeEnumeration
]
