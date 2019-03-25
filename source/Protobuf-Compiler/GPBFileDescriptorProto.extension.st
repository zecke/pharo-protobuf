Extension { #name : #GPBFileDescriptorProto }

{ #category : #'*Protobuf-Compiler' }
GPBFileDescriptorProto >> visit: aVisitor [
	aVisitor visitFileDescriptorProto: self
]
