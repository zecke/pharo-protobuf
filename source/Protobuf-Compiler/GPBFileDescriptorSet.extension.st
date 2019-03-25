Extension { #name : #GPBFileDescriptorSet }

{ #category : #'*Protobuf-Compiler' }
GPBFileDescriptorSet >> visit: aVisitor [
	aVisitor visitFileDescriptorSet: self.
]
