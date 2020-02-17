Class {
	#name : #'GCP_GCFSDocument',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#fields => ((PBPropertySlot with: #GCP_GCFSDocument_FieldsEntry) fieldName: \'fields\'; fieldNumber: 2; beRepeated; jsonFieldName: \'fields\')',
		'#create_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'create_time\'; fieldNumber: 3; beOptional; jsonFieldName: \'createTime\')',
		'#update_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'update_time\'; fieldNumber: 4; beOptional; jsonFieldName: \'updateTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSDocument >> add_fields: anObject [
	self fieldss add: anObject.
]

{ #category : #accessing }
GCP_GCFSDocument >> create_time [
	 ^create_time
]

{ #category : #accessing }
GCP_GCFSDocument >> create_time: anObject [
	create_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocument >> fieldss [
	 ^fields ifNil: [ fields := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSDocument >> name [
	 ^name
]

{ #category : #accessing }
GCP_GCFSDocument >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GCP_GCFSDocument >> update_time [
	 ^update_time
]

{ #category : #accessing }
GCP_GCFSDocument >> update_time: anObject [
	update_time:= anObject.
]
