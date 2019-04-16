"
ffiLibraryName
	^GrpcLibrary
"
Trait {
	#name : #TGrpcCalloutLibrary,
	#category : #'GRPC-Bindings'
}

{ #category : #'as yet unclassified' }
TGrpcCalloutLibrary classSide >> ffiLibrary [
	^GrpcLibrary
]

{ #category : #'as yet unclassified' }
TGrpcCalloutLibrary classSide >> ffiLibraryName [
	^self ffiLibrary
]

{ #category : #'library path' }
TGrpcCalloutLibrary >> ffiLibraryName [
	^self class ffiLibraryName
]
