Class {
	#name : #'GCP_GCFSArrayValue',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#values => ((PBPropertySlot with: #GCP_GCFSValue) fieldName: \'values\'; fieldNumber: 1; beRepeated; jsonFieldName: \'values\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSArrayValue >> add_values: anObject [
	self valuess add: anObject.
]

{ #category : #accessing }
GCP_GCFSArrayValue >> valuess [
	 ^values ifNil: [ values := OrderedCollection new ]
]
