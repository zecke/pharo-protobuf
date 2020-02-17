Class {
	#name : #'GCP_GCFSListenRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#database => ((PBPropertySlot with: #PBTypeString) fieldName: \'database\'; fieldNumber: 1; beOptional; jsonFieldName: \'database\')',
		'#add_target => ((PBPropertySlot with: #GCP_GCFSTarget) fieldName: \'add_target\'; fieldNumber: 2; beOptional; jsonFieldName: \'addTarget\')',
		'#remove_target => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'remove_target\'; fieldNumber: 3; beOptional; jsonFieldName: \'removeTarget\')',
		'#labels => ((PBPropertySlot with: #GCP_GCFSListenRequest_LabelsEntry) fieldName: \'labels\'; fieldNumber: 4; beRepeated; jsonFieldName: \'labels\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSListenRequest >> add_labels: anObject [
	self labelss add: anObject.
]

{ #category : #accessing }
GCP_GCFSListenRequest >> add_target [
	 ^add_target
]

{ #category : #accessing }
GCP_GCFSListenRequest >> add_target: anObject [
	add_target:= anObject.
]

{ #category : #accessing }
GCP_GCFSListenRequest >> database [
	 ^database
]

{ #category : #accessing }
GCP_GCFSListenRequest >> database: anObject [
	database:= anObject.
]

{ #category : #accessing }
GCP_GCFSListenRequest >> labelss [
	 ^labels ifNil: [ labels := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSListenRequest >> remove_target [
	 ^remove_target
]

{ #category : #accessing }
GCP_GCFSListenRequest >> remove_target: anObject [
	remove_target:= anObject.
]
