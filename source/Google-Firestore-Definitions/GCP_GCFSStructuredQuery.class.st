Class {
	#name : #'GCP_GCFSStructuredQuery',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#select => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_Projection) fieldName: \'select\'; fieldNumber: 1; beOptional; jsonFieldName: \'select\')',
		'#from => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_CollectionSelector) fieldName: \'from\'; fieldNumber: 2; beRepeated; jsonFieldName: \'from\')',
		'#where => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_Filter) fieldName: \'where\'; fieldNumber: 3; beOptional; jsonFieldName: \'where\')',
		'#order_by => ((PBPropertySlot with: #GCP_GCFSStructuredQuery_Order) fieldName: \'order_by\'; fieldNumber: 4; beRepeated; jsonFieldName: \'orderBy\')',
		'#limit => ((PBPropertySlot with: #GCP_GPBInt32Value) fieldName: \'limit\'; fieldNumber: 5; beOptional; jsonFieldName: \'limit\')',
		'#offset => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'offset\'; fieldNumber: 6; beOptional; jsonFieldName: \'offset\')',
		'#start_at => ((PBPropertySlot with: #GCP_GCFSCursor) fieldName: \'start_at\'; fieldNumber: 7; beOptional; jsonFieldName: \'startAt\')',
		'#end_at => ((PBPropertySlot with: #GCP_GCFSCursor) fieldName: \'end_at\'; fieldNumber: 8; beOptional; jsonFieldName: \'endAt\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GCFSStructuredQuery >> add_from: anObject [
	self froms add: anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> add_order_by: anObject [
	self order_bys add: anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> end_at [
	 ^end_at
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> end_at: anObject [
	end_at:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> froms [
	 ^from ifNil: [ from := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> limit [
	 ^limit
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> limit: anObject [
	limit:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> offset [
	 ^offset
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> offset: anObject [
	offset:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> order_bys [
	 ^order_by ifNil: [ order_by := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> select [
	 ^select
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> select: anObject [
	select:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> start_at [
	 ^start_at
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> start_at: anObject [
	start_at:= anObject.
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> where [
	 ^where
]

{ #category : #accessing }
GCP_GCFSStructuredQuery >> where: anObject [
	where:= anObject.
]
