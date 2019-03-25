Class {
	#name : #'GPBSourceCodeInfo_Location',
	#superclass : #PBTypeMessage,
	#instVars : [
		'#path => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'path\'; fieldNumber: 1; beRepeated; jsonFieldName: \'path\')',
		'#span => ((PBPropertySlot with: #PBTypeInt32) fieldName: \'span\'; fieldNumber: 2; beRepeated; jsonFieldName: \'span\')',
		'#leading_comments => ((PBPropertySlot with: #PBTypeString) fieldName: \'leading_comments\'; fieldNumber: 3; beOptional; jsonFieldName: \'leadingComments\')',
		'#trailing_comments => ((PBPropertySlot with: #PBTypeString) fieldName: \'trailing_comments\'; fieldNumber: 4; beOptional; jsonFieldName: \'trailingComments\')',
		'#leading_detached_comments => ((PBPropertySlot with: #PBTypeString) fieldName: \'leading_detached_comments\'; fieldNumber: 6; beRepeated; jsonFieldName: \'leadingDetachedComments\')'
	],
	#category : #'Protobuf-Definitions'
}
