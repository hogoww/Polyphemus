tests
testByteSizeOfOneSlotObject
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	self assert: oop byteSize equals: 16