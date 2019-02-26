"
My subclasses represent the available wirte types.

0	Varint	int32, int64, uint32, uint64, sint32, sint64, bool, enum
1	64-bit	fixed64, sfixed64, double
2	Length-delimited	string, bytes, embedded messages, packed repeated fields
3	Start group	groups (deprecated)
4	End group	groups (deprecated)
5	32-bit	fixed32, sfixed32, float

"
Class {
	#name : #PBWireType,
	#superclass : #Object,
	#category : #'Protobuf-Slots'
}
