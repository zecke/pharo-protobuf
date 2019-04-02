Class {
	#name : #GPBFileOptions,
	#superclass : #PBTypeMessage,
	#instVars : [
		'#java_package => ((PBPropertySlot with: #PBTypeString) fieldName: \'java_package\'; fieldNumber: 1; beOptional; jsonFieldName: \'javaPackage\')',
		'#java_outer_classname => ((PBPropertySlot with: #PBTypeString) fieldName: \'java_outer_classname\'; fieldNumber: 8; beOptional; jsonFieldName: \'javaOuterClassname\')',
		'#optimize_for => ((PBPropertySlot with: #GPBFileOptions_OptimizeMode) fieldName: \'optimize_for\'; fieldNumber: 9; beOptional; defaultValue: \'SPEED\'; jsonFieldName: \'optimizeFor\')',
		'#java_multiple_files => ((PBPropertySlot with: #PBTypeBool) fieldName: \'java_multiple_files\'; fieldNumber: 10; beOptional; defaultValue: \'false\'; jsonFieldName: \'javaMultipleFiles\')',
		'#go_package => ((PBPropertySlot with: #PBTypeString) fieldName: \'go_package\'; fieldNumber: 11; beOptional; jsonFieldName: \'goPackage\')',
		'#cc_generic_services => ((PBPropertySlot with: #PBTypeBool) fieldName: \'cc_generic_services\'; fieldNumber: 16; beOptional; defaultValue: \'false\'; jsonFieldName: \'ccGenericServices\')',
		'#java_generic_services => ((PBPropertySlot with: #PBTypeBool) fieldName: \'java_generic_services\'; fieldNumber: 17; beOptional; defaultValue: \'false\'; jsonFieldName: \'javaGenericServices\')',
		'#py_generic_services => ((PBPropertySlot with: #PBTypeBool) fieldName: \'py_generic_services\'; fieldNumber: 18; beOptional; defaultValue: \'false\'; jsonFieldName: \'pyGenericServices\')',
		'#java_generate_equals_and_hash => ((PBPropertySlot with: #PBTypeBool) fieldName: \'java_generate_equals_and_hash\'; fieldNumber: 20; beOptional; jsonFieldName: \'javaGenerateEqualsAndHash\')',
		'#deprecated => ((PBPropertySlot with: #PBTypeBool) fieldName: \'deprecated\'; fieldNumber: 23; beOptional; defaultValue: \'false\'; jsonFieldName: \'deprecated\')',
		'#java_string_check_utf8 => ((PBPropertySlot with: #PBTypeBool) fieldName: \'java_string_check_utf8\'; fieldNumber: 27; beOptional; defaultValue: \'false\'; jsonFieldName: \'javaStringCheckUtf8\')',
		'#cc_enable_arenas => ((PBPropertySlot with: #PBTypeBool) fieldName: \'cc_enable_arenas\'; fieldNumber: 31; beOptional; defaultValue: \'false\'; jsonFieldName: \'ccEnableArenas\')',
		'#objc_class_prefix => ((PBPropertySlot with: #PBTypeString) fieldName: \'objc_class_prefix\'; fieldNumber: 36; beOptional; jsonFieldName: \'objcClassPrefix\')',
		'#csharp_namespace => ((PBPropertySlot with: #PBTypeString) fieldName: \'csharp_namespace\'; fieldNumber: 37; beOptional; jsonFieldName: \'csharpNamespace\')',
		'#swift_prefix => ((PBPropertySlot with: #PBTypeString) fieldName: \'swift_prefix\'; fieldNumber: 39; beOptional; jsonFieldName: \'swiftPrefix\')',
		'#php_class_prefix => ((PBPropertySlot with: #PBTypeString) fieldName: \'php_class_prefix\'; fieldNumber: 40; beOptional; jsonFieldName: \'phpClassPrefix\')',
		'#php_namespace => ((PBPropertySlot with: #PBTypeString) fieldName: \'php_namespace\'; fieldNumber: 41; beOptional; jsonFieldName: \'phpNamespace\')',
		'#php_generic_services => ((PBPropertySlot with: #PBTypeBool) fieldName: \'php_generic_services\'; fieldNumber: 42; beOptional; defaultValue: \'false\'; jsonFieldName: \'phpGenericServices\')',
		'#php_metadata_namespace => ((PBPropertySlot with: #PBTypeString) fieldName: \'php_metadata_namespace\'; fieldNumber: 44; beOptional; jsonFieldName: \'phpMetadataNamespace\')',
		'#ruby_package => ((PBPropertySlot with: #PBTypeString) fieldName: \'ruby_package\'; fieldNumber: 45; beOptional; jsonFieldName: \'rubyPackage\')',
		'#uninterpreted_option => ((PBPropertySlot with: #GPBUninterpretedOption) fieldName: \'uninterpreted_option\'; fieldNumber: 999; beRepeated; jsonFieldName: \'uninterpretedOption\')'
	],
	#category : #'Protobuf-Definitions'
}

{ #category : #accessing }
GPBFileOptions >> add_uninterpreted_option: anObject [
	self uninterpreted_options add: anObject.
]

{ #category : #accessing }
GPBFileOptions >> cc_enable_arenas [
	 ^cc_enable_arenas ifNil: [false]
]

{ #category : #accessing }
GPBFileOptions >> cc_enable_arenas: anObject [
	cc_enable_arenas:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> cc_generic_services [
	 ^cc_generic_services ifNil: [false]
]

{ #category : #accessing }
GPBFileOptions >> cc_generic_services: anObject [
	cc_generic_services:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> csharp_namespace [
	 ^csharp_namespace
]

{ #category : #accessing }
GPBFileOptions >> csharp_namespace: anObject [
	csharp_namespace:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> deprecated [
	 ^deprecated ifNil: [false]
]

{ #category : #accessing }
GPBFileOptions >> deprecated: anObject [
	deprecated:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> go_package [
	 ^go_package
]

{ #category : #accessing }
GPBFileOptions >> go_package: anObject [
	go_package:= anObject.
]

{ #category : #'as yet unclassified' }
GPBFileOptions >> initialize [
	super initialize.
	optimize_for := 1" SPEED ".
	java_multiple_files := false.
	cc_generic_services := false.
	java_generic_services := false.
	py_generic_services := false.
	deprecated := false.
	java_string_check_utf8 := false.
	cc_enable_arenas := false.
	php_generic_services := false.

]

{ #category : #accessing }
GPBFileOptions >> java_generate_equals_and_hash [
	 ^java_generate_equals_and_hash
]

{ #category : #accessing }
GPBFileOptions >> java_generate_equals_and_hash: anObject [
	java_generate_equals_and_hash:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> java_generic_services [
	 ^java_generic_services ifNil: [false]
]

{ #category : #accessing }
GPBFileOptions >> java_generic_services: anObject [
	java_generic_services:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> java_multiple_files [
	 ^java_multiple_files ifNil: [false]
]

{ #category : #accessing }
GPBFileOptions >> java_multiple_files: anObject [
	java_multiple_files:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> java_outer_classname [
	 ^java_outer_classname
]

{ #category : #accessing }
GPBFileOptions >> java_outer_classname: anObject [
	java_outer_classname:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> java_package [
	 ^java_package
]

{ #category : #accessing }
GPBFileOptions >> java_package: anObject [
	java_package:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> java_string_check_utf8 [
	 ^java_string_check_utf8 ifNil: [false]
]

{ #category : #accessing }
GPBFileOptions >> java_string_check_utf8: anObject [
	java_string_check_utf8:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> objc_class_prefix [
	 ^objc_class_prefix
]

{ #category : #accessing }
GPBFileOptions >> objc_class_prefix: anObject [
	objc_class_prefix:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> optimize_for [
	 ^optimize_for ifNil: [1" SPEED "]
]

{ #category : #accessing }
GPBFileOptions >> optimize_for: anObject [
	optimize_for:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> php_class_prefix [
	 ^php_class_prefix
]

{ #category : #accessing }
GPBFileOptions >> php_class_prefix: anObject [
	php_class_prefix:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> php_generic_services [
	 ^php_generic_services ifNil: [false]
]

{ #category : #accessing }
GPBFileOptions >> php_generic_services: anObject [
	php_generic_services:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> php_metadata_namespace [
	 ^php_metadata_namespace
]

{ #category : #accessing }
GPBFileOptions >> php_metadata_namespace: anObject [
	php_metadata_namespace:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> php_namespace [
	 ^php_namespace
]

{ #category : #accessing }
GPBFileOptions >> php_namespace: anObject [
	php_namespace:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> py_generic_services [
	 ^py_generic_services ifNil: [false]
]

{ #category : #accessing }
GPBFileOptions >> py_generic_services: anObject [
	py_generic_services:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> ruby_package [
	 ^ruby_package
]

{ #category : #accessing }
GPBFileOptions >> ruby_package: anObject [
	ruby_package:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> swift_prefix [
	 ^swift_prefix
]

{ #category : #accessing }
GPBFileOptions >> swift_prefix: anObject [
	swift_prefix:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> uninterpreted_options [
	 ^uninterpreted_option ifNil: [ uninterpreted_option := OrderedCollection new ]
]
