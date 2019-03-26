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
GPBFileOptions >> cc_enable_arenas [
	 ^cc_enable_arenas
]

{ #category : #accessing }
GPBFileOptions >> cc_enable_arenas: anObject [
	cc_enable_arenas:= anObject.
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
GPBFileOptions >> go_package [
	 ^go_package
]

{ #category : #accessing }
GPBFileOptions >> go_package: anObject [
	go_package:= anObject.
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
GPBFileOptions >> objc_class_prefix [
	 ^objc_class_prefix
]

{ #category : #accessing }
GPBFileOptions >> objc_class_prefix: anObject [
	objc_class_prefix:= anObject.
]

{ #category : #accessing }
GPBFileOptions >> optimize_for [
	 ^optimize_for
]

{ #category : #accessing }
GPBFileOptions >> optimize_for: anObject [
	optimize_for:= anObject.
]
