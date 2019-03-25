Class {
	#name : #GPBGeneratingVisitor,
	#superclass : #GPBVisitorBase,
	#instVars : [
		'descriptorStack',
		'fileStack',
		'classPrefix',
		'targetPackage',
		'customPrefix',
		'typeNames'
	],
	#category : #'Protobuf-Compiler'
}

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> buildName: aString [
	^descriptorStack
						ifEmpty: [ '.', self currentFile package, '.', aString ]
						ifNotEmpty: [ '.', self currentFile package, '.', ((descriptorStack collect: #name) reversed joinUsing: '.'), '.', aString].
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> currentDescriptor [
	^descriptorStack top.
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> currentFile [
	^fileStack top.
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> customPrefix: aPrefix [
	customPrefix := aPrefix
]

{ #category : #initialization }
GPBGeneratingVisitor >> initialize [
	super initialize.
	descriptorStack := Stack new.
	fileStack := Stack new.
	customPrefix := ''.
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> pushDescriptor: aGPBDescriptorProto during: aBlockClosure [
	| className protoName |
	protoName := self buildName: aGPBDescriptorProto name.
	className := self typeForName: protoName.

	descriptorStack push: (GPBCurrentDescriptor with: aGPBDescriptorProto).
	aBlockClosure value.

	"Build the class"
	self flag: #TODO. "Pick different base class if there is a 'default' value or not."
	Smalltalk classInstaller make: [:classBuilder |
		classBuilder
			superclass: PBTypeMessage;
			name: className;
			slots: descriptorStack top slots;
			category: targetPackage].
	descriptorStack pop.
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> pushFile: aFileDescriptor during: aBlockClosure [
	fileStack push: aFileDescriptor.
	self updateClassPrefix.
	aBlockClosure ensure: [ fileStack pop. self updateClassPrefix ].
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> targetPackage: aPackageName [
	targetPackage := aPackageName.
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> typeForName: aString [
	^typeNames typeNamed: aString allButFirst.
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> typeNames: aGPBTypeNamesVisitor [ 
	typeNames := aGPBTypeNamesVisitor
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> updateClassPrefix [
	self flag: #todo.  "TODO(zecke): Make the below uses a pharo extension."
	classPrefix := fileStack
		ifEmpty: [ nil ]
		ifNotEmpty: [ fileStack top options objc_class_prefix ].
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> visitDescriptorProto: aGPBDescriptorProto [
	self pushDescriptor: aGPBDescriptorProto during: [ 
		super visitDescriptorProto: aGPBDescriptorProto ].
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> visitEnumDescriptorProto: aGPBEnumDescriptorProto [
	| protoName enumName compiledClass classVariables |
	protoName := self buildName: aGPBEnumDescriptorProto name.
	enumName := self typeForName: protoName.

	"Build the class"
	classVariables := aGPBEnumDescriptorProto values collect: [:each | each name asSymbol asClassVariable value: each number].
	compiledClass := Smalltalk classInstaller make: [:classBuilder |
		classBuilder
			superclass: PBTypeEnum;
			name: enumName;
			sharedVariables: classVariables;
			category: targetPackage].

	"Add create a way to initialize it"
	compiledClass class compile: (String streamContents: [:stream |
		stream nextPutAll: 'initialize'; cr.
		classVariables do: [:each |
			stream
				nextPutAll: each key;
				nextPutAll: ' := ';
				nextPutAll: each value displayString;
				nextPutAll: '.'; cr.
		]]).

	classVariables do: [:each |
		compiledClass class compile: (String streamContents: [:stream |
			stream
				nextPutAll: each key; cr;
				tab; nextPutAll: '^ '; nextPutAll: each key
		])].
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> visitFieldDescriptorProto: aField [
	| slot |
	slot := PBPropertySlot new.
	slot fieldName: aField name asSymbol.
	slot name: aField name asSymbol.
	slot jsonFieldName: aField json_name.
	slot defaultValue: aField default_value.
	slot fieldNumber: aField number.

	self flag: #todo. "Remove magic numbers with a shared pool?"
	aField type = 1 ifTrue: [ slot encodingTypeName: #PBTypeDouble ].
	aField type = 2 ifTrue: [ slot encodingTypeName: #PBTypeFloat ].
	aField type = 3 ifTrue: [ slot encodingTypeName: #PBTypeInt64 ].
	aField type = 4 ifTrue: [ slot encodingTypeName: #PBTypeUint64 ].
	aField type = 5 ifTrue: [ slot encodingTypeName: #PBTypeInt32 ].
	aField type = 6 ifTrue: [ slot encodingTypeName: #PBTypeFixed32 ].
	aField type = 7 ifTrue: [ slot encodingTypeName: #PBTypeFixed64 ].
	aField type = 8 ifTrue: [ slot encodingTypeName: #PBTypeBool ].
	aField type = 9 ifTrue: [ slot encodingTypeName: #PBTypeString ].
	aField type = 11 ifTrue: [
		| fieldName |
		fieldName := aField type_name.
		slot encodingTypeName: (self typeForName: fieldName).
	].
	aField type = 12 ifTrue: [ slot encodingTypeName: #PBTypeBytes ].
	aField type = 13 ifTrue: [ slot encodingTypeName: #PBTypeUint32 ].
	aField type = 14 ifTrue: [
		| fieldName |
		fieldName := aField type_name.
		slot encodingTypeName: (self typeForName: fieldName).
	].
	aField type = 15 ifTrue: [ slot encodingTypeName: #PBTypeSfixed32 ].
	aField type = 16 ifTrue: [ slot encodingTypeName: #PBTypeSfixed64 ].
	aField type = 17 ifTrue: [ slot encodingTypeName: #PBTypeSint32 ].
	aField type = 18 ifTrue: [ slot encodingTypeName: #PBTypeSint64 ].

	aField label = 1 ifTrue: [ slot beOptional ].
	aField label = 3 ifTrue: [ slot beRepeated ].

	self currentDescriptor addSlot: slot.
]

{ #category : #'as yet unclassified' }
GPBGeneratingVisitor >> visitFileDescriptorProto: aGPBFileDescriptorProto [
	self pushFile: aGPBFileDescriptorProto during: [ super visitFileDescriptorProto: aGPBFileDescriptorProto ].
]
