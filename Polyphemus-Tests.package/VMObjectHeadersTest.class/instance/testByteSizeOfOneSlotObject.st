tests
testByteSizeOfOneSlotObject
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	self assert: oop oopByteSize equals: 16