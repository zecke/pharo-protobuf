Class {
	#name : #GPBVisitorBase,
	#superclass : #Object,
	#category : #'Protobuf-Compiler'
}

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitDescriptorProto: aGBPDescriptorProto [
	aGBPDescriptorProto enum_types do: [:each | each visit: self ].
	aGBPDescriptorProto nested_types do: [:each | each visit: self ].
	aGBPDescriptorProto extension_ranges do: [:each | each visit: self ].
	aGBPDescriptorProto extensions do: [:each | each visit: self ].
	aGBPDescriptorProto fields do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitEnumDescriptorProto: aGBPEnumDescriptorProto [ 
	aGBPEnumDescriptorProto values do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitEnumValueDescriptorProto: aGBPEnumValueDescriptorProto [
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitFieldDescriptorProto: aGBPFieldDescriptorProto [ 

]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitFileDescriptorProto: aGBPFileDescriptorProto [ 
	aGBPFileDescriptorProto message_types do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitFileDescriptorSet: aGBPFileDescriptorSet [
	aGBPFileDescriptorSet files do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitProtoExtensionRange: aGBPDescriptorProto_ExtensionRange [ 

]
