Class {
	#name : #'GCP_GCFSWriteRequest_LabelsEntry',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#key => ((PBPropertySlot with: #PBTypeString) fieldName: \'key\'; fieldNumber: 1; beOptional; jsonFieldName: \'key\')',
		'#value => ((PBPropertySlot with: #PBTypeString) fieldName: \'value\'; fieldNumber: 2; beOptional; jsonFieldName: \'value\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSWriteRequest_LabelsEntry >> key [
	 ^key
]

{ #category : #accessing }
GCP_GCFSWriteRequest_LabelsEntry >> key: anObject [
	key:= anObject.
]

{ #category : #accessing }
GCP_GCFSWriteRequest_LabelsEntry >> value [
	 ^value
]

{ #category : #accessing }
GCP_GCFSWriteRequest_LabelsEntry >> value: anObject [
	value:= anObject.
]
