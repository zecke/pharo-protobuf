Class {
	#name : #'GCP_GCFSGetDocumentRequest',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#name => ((PBPropertySlot with: #PBTypeString) fieldName: \'name\'; fieldNumber: 1; beOptional; jsonFieldName: \'name\')',
		'#mask => ((PBPropertySlot with: #GCP_GCFSDocumentMask) fieldName: \'mask\'; fieldNumber: 2; beOptional; jsonFieldName: \'mask\')',
		'#transaction => ((PBPropertySlot with: #PBTypeBytes) fieldName: \'transaction\'; fieldNumber: 3; beOptional; jsonFieldName: \'transaction\')',
		'#read_time => ((PBPropertySlot with: #GCP_GPBTimestamp) fieldName: \'read_time\'; fieldNumber: 5; beOptional; jsonFieldName: \'readTime\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSGetDocumentRequest >> mask [
	 ^mask
]

{ #category : #accessing }
GCP_GCFSGetDocumentRequest >> mask: anObject [
	mask:= anObject.
]

{ #category : #accessing }
GCP_GCFSGetDocumentRequest >> name [
	 ^name
]

{ #category : #accessing }
GCP_GCFSGetDocumentRequest >> name: anObject [
	name:= anObject.
]

{ #category : #accessing }
GCP_GCFSGetDocumentRequest >> read_time [
	 ^read_time
]

{ #category : #accessing }
GCP_GCFSGetDocumentRequest >> read_time: anObject [
	read_time:= anObject.
]

{ #category : #accessing }
GCP_GCFSGetDocumentRequest >> transaction [
	 ^transaction
]

{ #category : #accessing }
GCP_GCFSGetDocumentRequest >> transaction: anObject [
	transaction:= anObject.
]
