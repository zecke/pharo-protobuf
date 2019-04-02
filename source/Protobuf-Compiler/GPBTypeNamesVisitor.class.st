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
		'protoTypeNames',
		'customPrefix'
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

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> customPrefix: aPrefixName [
	customPrefix := aPrefixName
]

{ #category : #initialization }
GPBTypeNamesVisitor >> initialize [
	super initialize.
	typeNames := Dictionary new.
	protoTypeNames := Stack new.
	customPrefix := ''.
]

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> typeNamed: aString [ 
	^typeNames at: aString
]

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> visitDescriptorProto: aGPBDescriptorProto [
	| protoTypeName baseName messageName |
	protoTypeName := aGPBDescriptorProto name.
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
	super visitDescriptorProto: aGPBDescriptorProto.
	protoTypeNames pop.
]

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> visitEnumDescriptorProto: aGPBEnumDescriptorProto [
	| baseName enumName |
	baseName := self currentBaseName.
	baseName
		ifNil: [
			"This is a free standing enum"
			enumName := protoClassPrefix, aGPBEnumDescriptorProto name.
			baseName := protoPackageName]
		ifNotNil: [
			enumName := (typeNames at: baseName), '_', aGPBEnumDescriptorProto name.].

	typeNames at: baseName, '.', aGPBEnumDescriptorProto name put: enumName asSymbol.
	super visitEnumDescriptorProto: aGPBEnumDescriptorProto.
]

{ #category : #'as yet unclassified' }
GPBTypeNamesVisitor >> visitFileDescriptorProto: aGPBFileDescriptorProto [
	protoPackageName := aGPBFileDescriptorProto package.
	protoClassPrefix := customPrefix, (aGPBFileDescriptorProto options objc_class_prefix ifNil: [ '' ]).
	super visitFileDescriptorProto: aGPBFileDescriptorProto
]
