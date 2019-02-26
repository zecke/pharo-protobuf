Extension { #name : #ByteArray }

{ #category : #'*protobuf-extensions' }
ByteArray >> longLongAt: index bigEndian: aBool [
	"Return a 64bit integer quantity starting from the given byte index
	assuming two's complement form."

	| b0 b1 b2 b3 b4 b5 b6 w |
	aBool ifTrue:[
		b0 := self at: index.
		b1 := self at: index+1.
		b2 := self at: index+2.
		b3 := self at: index+3.
		b4 := self at: index+4.
		b5 := self at: index+5.
		b6 := self at: index+6.		
		w := self at: index+7.
	] ifFalse:[
		w := self at: index.
		b6 := self at: index+1.
		b5 := self at: index+2.
		b4 := self at: index+3.
		b3 := self at: index+4.
		b2 := self at: index+5.
		b1 := self at: index+6.
		b0 := self at: index+7.
	].
	"Minimize LargeInteger arithmetic"
	b6 = 0 ifFalse:[w := (b6 bitShift: 8) + w].
	b5 = 0 ifFalse:[w := (b5 bitShift: 16) + w].
	b4 = 0 ifFalse:[w := (b4 bitShift: 24) + w].
	b3 = 0 ifFalse:[w := (b3 bitShift: 32) + w].
	b2 = 0 ifFalse:[w := (b2 bitShift: 40) + w].
	b1 = 0 ifFalse:[w := (b1 bitShift: 48) + w].
	"Below is equivalent of ((b0 bitAnd: 16r/F) bitShift: 56) - ((b0 bitAnd: 16r80) bitShift: 56) but reduces one shift.
	The logic is that if the highest bit is set, we get the number by subtracting the value of that bit from the lower 63 bits."
	b0 = 0 ifFalse:[w := (((b0 bitAnd: 16r7F) - (b0 bitAnd: 16r80)) bitShift: 56) + w].
	^w
]

{ #category : #'*protobuf-extensions' }
ByteArray >> longLongAt: index put: value bigEndian: aBool [
	"Store a 64bit signed integer quantity starting from the given byte index.
	We assume two's complement form."

	| b0 b1 b2 b3 b4 b5 b6 b7 |
	b0 := value bitShift: -56.
	b0 := (b0 bitAnd: 16r7F) - (b0 bitAnd: 16r80).
	b0 < 0 ifTrue:[b0 := 256 + b0].
	b1 := (value bitShift: -48) bitAnd: 255.
	b2 := (value bitShift: -40) bitAnd: 255.
	b3 := (value bitShift: -32) bitAnd: 255.
	b4 := (value bitShift: -24) bitAnd: 255.
	b5 := (value bitShift: -16) bitAnd: 255.
	b6 := (value bitShift: -8) bitAnd: 255.
	b7 := value bitAnd: 255.
	aBool ifTrue:[
		self at: index put: b0.
		self at: index+1 put: b1.
		self at: index+2 put: b2.
		self at: index+3 put: b3.
		self at: index+4 put: b4.
		self at: index+5 put: b5.
		self at: index+6 put: b6.
		self at: index+7 put: b7.
	] ifFalse:[
		self at: index put: b7.
		self at: index+1 put: b6.
		self at: index+2 put: b5.
		self at: index+3 put: b4.
		self at: index+4 put: b3.
		self at: index+5 put: b2.
		self at: index+6 put: b1.
		self at: index+7 put: b0.
	].
	^value
]

{ #category : #'*protobuf-extensions' }
ByteArray >> unsignedLongLongAt: index bigEndian: aBool [
	"Return a 64bit unsigned integer quantity starting from the given byte index"
	| b0 b1 b2 b3 b4 b5 b6 w |
	aBool ifTrue:[
		b0 := self at: index.
		b1 := self at: index+1.
		b2 := self at: index+2.
		b3 := self at: index+3.
		b4 := self at: index+4.
		b5 := self at: index+5.
		b6 := self at: index+6.		
		w := self at: index+7.
	] ifFalse:[
		w := self at: index.
		b6 := self at: index+1.
		b5 := self at: index+2.
		b4 := self at: index+3.
		b3 := self at: index+4.
		b2 := self at: index+5.
		b1 := self at: index+6.
		b0 := self at: index+7.
	].
	"Minimize LargeInteger arithmetic"
	b6 = 0 ifFalse:[w := (b6 bitShift: 8) + w].
	b5 = 0 ifFalse:[w := (b5 bitShift: 16) + w].
	b4 = 0 ifFalse:[w := (b4 bitShift: 24) + w].
	b3 = 0 ifFalse:[w := (b3 bitShift: 32) + w].
	b2 = 0 ifFalse:[w := (b2 bitShift: 40) + w].
	b1 = 0 ifFalse:[w := (b1 bitShift: 48) + w].
	b0 = 0 ifFalse:[w := (b0 bitShift: 56) + w].
	^w
]

{ #category : #'*protobuf-extensions' }
ByteArray >> unsignedLongLongAt: index put: value bigEndian: aBool [
	"Store a 64bit unsigned integer quantity starting from the given byte index"

	| b0 b1 b2 b3 b4 b5 b6 b7 |
	b0 := value bitShift: -56.
	b1 := (value bitShift: -48) bitAnd: 255.
	b2 := (value bitShift: -40) bitAnd: 255.
	b3 := (value bitShift: -32) bitAnd: 255.
	b4 := (value bitShift: -24) bitAnd: 255.
	b5 := (value bitShift: -16) bitAnd: 255.
	b6 := (value bitShift: -8) bitAnd: 255.
	b7 := value bitAnd: 255.
	aBool ifTrue:[
		self at: index put: b0.
		self at: index+1 put: b1.
		self at: index+2 put: b2.
		self at: index+3 put: b3.
		self at: index+4 put: b4.
		self at: index+5 put: b5.
		self at: index+6 put: b6.
		self at: index+7 put: b7.
	] ifFalse:[
		self at: index put: b7.
		self at: index+1 put: b6.
		self at: index+2 put: b5.
		self at: index+3 put: b4.
		self at: index+4 put: b3.
		self at: index+5 put: b2.
		self at: index+6 put: b1.
		self at: index+7 put: b0.
	].
	^value
]
