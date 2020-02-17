Class {
	#name : #'GCP_GAPIHttpRule',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#selector => ((PBPropertySlot with: #PBTypeString) fieldName: \'selector\'; fieldNumber: 1; beOptional; jsonFieldName: \'selector\')',
		'#get => ((PBPropertySlot with: #PBTypeString) fieldName: \'get\'; fieldNumber: 2; beOptional; jsonFieldName: \'get\')',
		'#put => ((PBPropertySlot with: #PBTypeString) fieldName: \'put\'; fieldNumber: 3; beOptional; jsonFieldName: \'put\')',
		'#post => ((PBPropertySlot with: #PBTypeString) fieldName: \'post\'; fieldNumber: 4; beOptional; jsonFieldName: \'post\')',
		'#delete => ((PBPropertySlot with: #PBTypeString) fieldName: \'delete\'; fieldNumber: 5; beOptional; jsonFieldName: \'delete\')',
		'#patch => ((PBPropertySlot with: #PBTypeString) fieldName: \'patch\'; fieldNumber: 6; beOptional; jsonFieldName: \'patch\')',
		'#body => ((PBPropertySlot with: #PBTypeString) fieldName: \'body\'; fieldNumber: 7; beOptional; jsonFieldName: \'body\')',
		'#custom => ((PBPropertySlot with: #GCP_GAPICustomHttpPattern) fieldName: \'custom\'; fieldNumber: 8; beOptional; jsonFieldName: \'custom\')',
		'#additional_bindings => ((PBPropertySlot with: #GCP_GAPIHttpRule) fieldName: \'additional_bindings\'; fieldNumber: 11; beRepeated; jsonFieldName: \'additionalBindings\')',
		'#response_body => ((PBPropertySlot with: #PBTypeString) fieldName: \'response_body\'; fieldNumber: 12; beOptional; jsonFieldName: \'responseBody\')'
	],
	#category : #'Google-Firestore-Definitions'
}

{ #category : #accessing }
GCP_GAPIHttpRule >> add_additional_bindings: anObject [
	self additional_bindingss add: anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> additional_bindingss [
	 ^additional_bindings ifNil: [ additional_bindings := OrderedCollection new ]
]

{ #category : #accessing }
GCP_GAPIHttpRule >> body [
	 ^body
]

{ #category : #accessing }
GCP_GAPIHttpRule >> body: anObject [
	body:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> custom [
	 ^custom
]

{ #category : #accessing }
GCP_GAPIHttpRule >> custom: anObject [
	custom:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> delete [
	 ^delete
]

{ #category : #accessing }
GCP_GAPIHttpRule >> delete: anObject [
	delete:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> get [
	 ^get
]

{ #category : #accessing }
GCP_GAPIHttpRule >> get: anObject [
	get:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> patch [
	 ^patch
]

{ #category : #accessing }
GCP_GAPIHttpRule >> patch: anObject [
	patch:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> post [
	 ^post
]

{ #category : #accessing }
GCP_GAPIHttpRule >> post: anObject [
	post:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> put [
	 ^put
]

{ #category : #accessing }
GCP_GAPIHttpRule >> put: anObject [
	put:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> response_body [
	 ^response_body
]

{ #category : #accessing }
GCP_GAPIHttpRule >> response_body: anObject [
	response_body:= anObject.
]

{ #category : #accessing }
GCP_GAPIHttpRule >> selector [
	 ^selector
]

{ #category : #accessing }
GCP_GAPIHttpRule >> selector: anObject [
	selector:= anObject.
]
