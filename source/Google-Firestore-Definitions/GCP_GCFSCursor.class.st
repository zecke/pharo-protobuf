Class {
	#name : #'GCP_GCFSCursor',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#values => ((PBPropertySlot with: #GCP_GCFSValue) fieldName: \'values\'; fieldNumber: 1; beRepeated; jsonFieldName: \'values\')',
		'#before => ((PBPropertySlot with: #PBTypeBool) fieldName: \'before\'; fieldNumber: 2; beOptional; jsonFieldName: \'before\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSCursor >> add_values: anObject [
	self valuess add: anObject.
]

{ #category : #accessing }
GCP_GCFSCursor >> before [
	 ^before
]

{ #category : #accessing }
GCP_GCFSCursor >> before: anObject [
	before:= anObject.
]

{ #category : #accessing }
GCP_GCFSCursor >> valuess [
	 ^values ifNil: [ values := OrderedCollection new ]
]
