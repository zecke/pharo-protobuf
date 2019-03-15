Class {
	#name : #GBPVisitorBase,
	#superclass : #Object,
	#category : #'Protobuf-Compiler'
}

{ #category : #'as yet unclassified' }
GBPVisitorBase >> visitDescriptorProto: aGBPDescriptorProto [
	aGBPDescriptorProto enum_types do: [:each | each visit: self ].
	aGBPDescriptorProto extension_ranges do: [:each | each visit: self ].
	aGBPDescriptorProto extensions do: [:each | each visit: self ].
	aGBPDescriptorProto fields do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GBPVisitorBase >> visitEnumDescriptorProto: aGBPEnumDescriptorProto [ 
	aGBPEnumDescriptorProto values do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GBPVisitorBase >> visitEnumValueDescriptorProto: aGBPEnumValueDescriptorProto [
]

{ #category : #'as yet unclassified' }
GBPVisitorBase >> visitFieldDescriptorProto: aGBPFieldDescriptorProto [ 

]

{ #category : #'as yet unclassified' }
GBPVisitorBase >> visitFileDescriptorProto: aGBPFileDescriptorProto [ 
	aGBPFileDescriptorProto message_types do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GBPVisitorBase >> visitFileDescriptorSet: aGBPFileDescriptorSet [
	aGBPFileDescriptorSet files do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GBPVisitorBase >> visitProtoExtensionRange: aGBPDescriptorProto_ExtensionRange [ 

]
