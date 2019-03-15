Extension { #name : #GBPDescriptorProto }

{ #category : #'*Protobuf-Compiler' }
GBPDescriptorProto >> visit: aVisitor [
	aVisitor visitDescriptorProto: self
]
