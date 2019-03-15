Extension { #name : #GBPFileOptions }

{ #category : #'*Protobuf-Compiler' }
GBPFileOptions >> visit: aVisitor [
	aVisitor visitFileOptions: self
]
