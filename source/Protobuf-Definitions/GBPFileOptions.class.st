Class {
	#name : #GBPFileOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#java_package => ((PBPropertySlot with: #PBTypeString) fieldName: \'java_package\'; fieldNumber: 1; beOptional)',
		'#java_outer_classname => ((PBPropertySlot with: #PBTypeString) fieldName: \'java_outer_classname\'; fieldNumber: 8; beOptional)',
		'#go_package => ((PBPropertySlot with: #PBTypeString) fieldName: \'go_package\'; fieldNumber: 11; beOptional)',
		'#optimize_for => ((PBPropertySlot with: #GBPOptimizeMode) fieldName: \'optimize_for\'; fieldNumber: 9; beOptional)',
		'#cc_enable_arenas => ((PBPropertySlot with: #PBTypeBool) fieldName: \'cc_enable_arenas\'; fieldNumber: 31; beOptional; defaultValue: false)',
		'#objc_class_prefix => ((PBPropertySlot with: #PBTypeString) fieldName: \'objc_class_prefix\'; fieldNumber: 36; beOptional)',
		'#csharp_namespace => ((PBPropertySlot with: #PBTypeString) fieldName: \'csharp_namespace\'; fieldNumber: 37; beOptional)'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GBPFileOptions >> cc_enable_arenas [
	 ^cc_enable_arenas
]

{ #category : #accessing }
GBPFileOptions >> cc_enable_arenas: anObject [
	cc_enable_arenas:= anObject.
]

{ #category : #accessing }
GBPFileOptions >> csharp_namespace [
	 ^csharp_namespace
]

{ #category : #accessing }
GBPFileOptions >> csharp_namespace: anObject [
	csharp_namespace:= anObject.
]

{ #category : #accessing }
GBPFileOptions >> go_package [
	 ^go_package
]

{ #category : #accessing }
GBPFileOptions >> go_package: anObject [
	go_package:= anObject.
]

{ #category : #accessing }
GBPFileOptions >> java_outer_classname [
	 ^java_outer_classname
]

{ #category : #accessing }
GBPFileOptions >> java_outer_classname: anObject [
	java_outer_classname:= anObject.
]

{ #category : #accessing }
GBPFileOptions >> java_package [
	 ^java_package
]

{ #category : #accessing }
GBPFileOptions >> java_package: anObject [
	java_package:= anObject.
]

{ #category : #accessing }
GBPFileOptions >> objc_class_prefix [
	 ^objc_class_prefix
]

{ #category : #accessing }
GBPFileOptions >> objc_class_prefix: anObject [
	objc_class_prefix:= anObject.
]

{ #category : #accessing }
GBPFileOptions >> optimize_for [
	 ^optimize_for
]

{ #category : #accessing }
GBPFileOptions >> optimize_for: anObject [
	optimize_for:= anObject.
]
