Class {
	#name : #'GCP_GCFSTargetChange',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#target_change_type => ((PBPropertySlot with: #GCP_GCFSTargetChange_TargetChangeType) fieldName: \'target_change_type\'; fieldNumber: 1; beOptional; jsonFieldName: \'targetChangeType\')',
		'#target_ids => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'target_ids\'; fieldNumber: 2; beRepeated; jsonFieldName: \'targetIds\')',
		'#cause => ((PBPropertySlot with: #GCP_RPCStatus) fieldName: \'cause\'; fieldNumber: 3; beOptional; jsonFieldName: \'cause\')',
		'#resume_token => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'resume_token\'; fieldNumber: 4; beOptional; jsonFieldName: \'resumeToken\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 6; beOptional; jsonFieldName: \'readTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSTargetChange >> add_target_ids: anObject [
	self target_idss add: anObject.
]

{ #category : #accessing }
GCP_GCFSTargetChange >> cause [
	 ^cause
]

{ #category : #accessing }
GCP_GCFSTargetChange >> cause: anObject [
	cause:= anObject.
]

{ #category : #accessing }
GCP_GCFSTargetChange >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSTargetChange >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSTargetChange >> resume_token [
	 ^resume_token
]

{ #category : #accessing }
GCP_GCFSTargetChange >> resume_token: anObject [
	resume_token:= anObject.
]

{ #category : #accessing }
GCP_GCFSTargetChange >> target_change_type [
	 ^target_change_type
]

{ #category : #accessing }
GCP_GCFSTargetChange >> target_change_type: anObject [
	target_change_type:= anObject.
]

{ #category : #accessing }
GCP_GCFSTargetChange >> target_idss [
	 ^target_ids ifNil: [ target_ids := OrderedCollection new ]
]
