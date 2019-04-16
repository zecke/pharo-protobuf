Class {
	#name : #GrpcOpSendStatusFromServer,
	#superclass : #GrpcOpBase,
	#category : #'GRPC-Bindings-Ops'
}

{ #category : #'field definition' }
GrpcOpSendStatusFromServer >> fieldsDesc [
	"self rebuildFieldAccessors"
	^#(
		size_t trailing_metadata_count;
		GrpcMetadata* trailing_metadata;
		GrpcStatusCode status;
		GrpcSlice* status_details;
		)
]
