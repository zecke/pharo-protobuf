Extension { #name : #GPBDescriptorProto }

{ #category : #'*Protobuf-Compiler' }
GPBDescriptorProto >> visit: aVisitor [
	aVisitor visitDescriptorProto: self
]
