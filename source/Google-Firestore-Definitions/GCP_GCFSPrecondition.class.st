Class {
	#name : #'GCP_GCFSPrecondition',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#exists => ((PBPropertySlot with: #PBTypeBool) fieldName: \'exists\'; fieldNumber: 1; beOptional; jsonFieldName: \'exists\')',
		'#update_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'update_time\'; fieldNumber: 2; beOptional; jsonFieldName: \'updateTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSPrecondition >> exists [
	 ^exists
]

{ #category : #accessing }
GCP_GCFSPrecondition >> exists: anObject [
	exists:= anObject.
]

{ #category : #accessing }
GCP_GCFSPrecondition >> update_time [
	 ^update_time
]

{ #category : #accessing }
GCP_GCFSPrecondition >> update_time: anObject [
	update_time:= anObject.
]
