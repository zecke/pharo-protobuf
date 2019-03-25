Extension { #name : #GPBFieldDescriptorProto }

{ #category : #'*Protobuf-Compiler' }
GPBFieldDescriptorProto >> visit: aVisitor [
	aVisitor visitFieldDescriptorProto: self
]
