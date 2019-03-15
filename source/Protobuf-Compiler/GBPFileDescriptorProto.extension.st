Extension { #name : #GBPFileDescriptorProto }

{ #category : #'*Protobuf-Compiler' }
GBPFileDescriptorProto >> visit: aVisitor [
	aVisitor visitFileDescriptorProto: self
]
