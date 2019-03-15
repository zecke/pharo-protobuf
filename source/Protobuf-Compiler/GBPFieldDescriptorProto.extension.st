Extension { #name : #GBPFieldDescriptorProto }

{ #category : #'*Protobuf-Compiler' }
GBPFieldDescriptorProto >> visit: aVisitor [
	aVisitor visitFieldDescriptorProto: self
]
