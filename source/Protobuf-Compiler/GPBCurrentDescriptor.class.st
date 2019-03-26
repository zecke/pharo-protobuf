Class {
	#name : #GPBCurrentDescriptor,
	#superclass : #Object,
	#instVars : [
		'descriptor',
		'slots'
	],
	#category : #'Protobuf-Compiler'
}

{ #category : #'as yet unclassified' }
GPBCurrentDescriptor class >> with: aGPBDescriptorProto [ 
	^self new descriptor: aGPBDescriptorProto
]

{ #category : #'as yet unclassified' }
GPBCurrentDescriptor >> addSlot: aPBPropertySlot [ 
	slots add: aPBPropertySlot.
]

{ #category : #accessing }
GPBCurrentDescriptor >> descriptor: aDescriptor [
	descriptor := aDescriptor
]

{ #category : #accessing }
GPBCurrentDescriptor >> initialize [
	super initialize.
	slots := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
GPBCurrentDescriptor >> name [
	^descriptor name
]

{ #category : #'as yet unclassified' }
GPBCurrentDescriptor >> sortedSlots [
	^ slots sort: [:a :b | a fieldNumber <= b fieldNumber ]
]
