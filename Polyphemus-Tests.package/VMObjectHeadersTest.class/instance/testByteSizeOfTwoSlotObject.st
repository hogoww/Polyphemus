tests
testByteSizeOfTwoSlotObject
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 2).
	self assert: oop oopByteSize equals: 24