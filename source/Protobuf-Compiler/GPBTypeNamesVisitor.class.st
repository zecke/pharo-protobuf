"
TODO(zecke): deal with top-level enums not being inside a message.
"
Class {
	#name : #GPBTypeNamesVisitor,
	#superclass : #GPBVisitorBase,
	#instVars : [
		'typeNames',
		'protoPackageName',
		'protoClassPrefix',
		'protoTypeNames'
	],
	#category : #'Protobuf-Compiler'
}

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> currentBaseName [
	"Returns the basename or nil. E.g. google.protobuf.DescriptorProto."
	^protoTypeNames
		ifEmpty: [ nil ]
		ifNotEmpty: [ protoPackageName, '.', (protoTypeNames reversed joinUsing: '.') ].
]

{ #category : #initialization }
GPBTypeNamesVisitor >> initialize [
	super initialize.
	typeNames := Dictionary new.
	protoTypeNames := Stack new.
]

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> typeNamed: aString [ 
	^typeNames at: aString
]

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> visitDescriptorProto: aGBPDescriptorProto [
	| protoTypeName baseName messageName |
	protoTypeName := aGBPDescriptorProto name.
	baseName := self currentBaseName.
	baseName
		ifNil: [
			"This is a free standing message"
			messageName := protoClassPrefix, protoTypeName.
			baseName := protoPackageName]
		ifNotNil: [
			"This is a nested message."
			messageName := (typeNames at: baseName), '_', protoTypeName].
	protoTypeNames push: protoTypeName.
	
	typeNames at: baseName, '.', protoTypeName put: messageName asSymbol.
	super visitDescriptorProto: aGBPDescriptorProto.
	protoTypeNames pop.
]

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> visitEnumDescriptorProto: aGBPEnumDescriptorProto [
	| baseName enumName |
	baseName := self currentBaseName.
	baseName
		ifNil: [
			"This is a free standing enum"
			enumName := protoClassPrefix, aGBPEnumDescriptorProto name.
			baseName := protoPackageName]
		ifNotNil: [
			enumName := (typeNames at: baseName), '_', aGBPEnumDescriptorProto name.].

	typeNames at: baseName, '.', aGBPEnumDescriptorProto name put: enumName asSymbol.
	super visitEnumDescriptorProto: aGBPEnumDescriptorProto.
]

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> visitFileDescriptorProto: aGBPFileDescriptorProto [
	protoPackageName := aGBPFileDescriptorProto package.
	protoClassPrefix := aGBPFileDescriptorProto options objc_class_prefix.
	super visitFileDescriptorProto: aGBPFileDescriptorProto
]
