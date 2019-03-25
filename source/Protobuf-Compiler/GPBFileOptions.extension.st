Extension { #name : #GPBFileOptions }

{ #category : #'*Protobuf-Compiler' }
GPBFileOptions >> visit: aVisitor [
	aVisitor visitFileOptions: self
]
