Extension { #name : #GBPFileDescriptorSet }

{ #category : #'*Protobuf-Compiler' }
GBPFileDescriptorSet >> visit: aVisitor [
	aVisitor visitFileDescriptorSet: self.
]
