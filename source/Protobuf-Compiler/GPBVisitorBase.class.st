Class {
	#name : #GPBVisitorBase,
	#superclass : #Object,
	#category : #'Protobuf-Compiler'
}

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visit: aGPBFileDescriptorSet [ 
	aGPBFileDescriptorSet visit: self
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitDescriptorProto: aGPBDescriptorProto [
	aGPBDescriptorProto enum_types do: [:each | each visit: self ].
	aGPBDescriptorProto nested_types do: [:each | each visit: self ].
	aGPBDescriptorProto extension_ranges do: [:each | each visit: self ].
	aGPBDescriptorProto extensions do: [:each | each visit: self ].
	aGPBDescriptorProto fields do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitEnumDescriptorProto: aGPBEnumDescriptorProto [ 
	aGPBEnumDescriptorProto values do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitEnumValueDescriptorProto: aGPBEnumValueDescriptorProto [
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitFieldDescriptorProto: aGPBFieldDescriptorProto [ 

]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitFileDescriptorProto: aGPBFileDescriptorProto [ 
	aGPBFileDescriptorProto message_types do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitFileDescriptorSet: aGPBFileDescriptorSet [
	aGPBFileDescriptorSet files do: [:each | each visit: self ].
]

{ #category : #'as yet unclassified' }
GPBVisitorBase >> visitProtoExtensionRange: aGPBDescriptorProto_ExtensionRange [ 

]
