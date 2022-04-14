tests
testByteSizeOfTwoSlotObject
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 2).
	self assert: oop byteSize equals: 24