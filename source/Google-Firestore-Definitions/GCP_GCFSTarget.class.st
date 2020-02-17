Class {
	#name : #'GCP_GCFSTarget',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#query => ((PBPropertySlot with: #GCP_GCFSTarget_QueryTarget) fieldName: \'query\'; fieldNumber: 2; beOptional; jsonFieldName: \'query\')',
		'#documents => ((PBPropertySlot with: #GCP_GCFSTarget_DocumentsTarget) fieldName: \'documents\'; fieldNumber: 3; beOptional; jsonFieldName: \'documents\')',
		'#resume_token => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'resume_token\'; fieldNumber: 4; beOptional; jsonFieldName: \'resumeToken\')',
		'#target_id => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'target_id\'; fieldNumber: 5; beOptional; jsonFieldName: \'targetId\')',
		'#once => ((PBPropertySlot with: #PBTypeBool) fieldName: \'once\'; fieldNumber: 6; beOptional; jsonFieldName: \'once\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 11; beOptional; jsonFieldName: \'readTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSTarget >> documents [
	 ^documents
]

{ #category : #accessing }
GCP_GCFSTarget >> documents: anObject [
	documents:= anObject.
]

{ #category : #accessing }
GCP_GCFSTarget >> once [
	 ^once
]

{ #category : #accessing }
GCP_GCFSTarget >> once: anObject [
	once:= anObject.
]

{ #category : #accessing }
GCP_GCFSTarget >> query [
	 ^query
]

{ #category : #accessing }
GCP_GCFSTarget >> query: anObject [
	query:= anObject.
]

{ #category : #accessing }
GCP_GCFSTarget >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSTarget >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSTarget >> resume_token [
	 ^resume_token
]

{ #category : #accessing }
GCP_GCFSTarget >> resume_token: anObject [
	resume_token:= anObject.
]

{ #category : #accessing }
GCP_GCFSTarget >> target_id [
	 ^target_id
]

{ #category : #accessing }
GCP_GCFSTarget >> target_id: anObject [
	target_id:= anObject.
]
