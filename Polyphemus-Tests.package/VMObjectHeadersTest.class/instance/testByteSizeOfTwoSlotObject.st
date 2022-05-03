tests
testByteSizeOfTwoSlotObject
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 2).
	self assert: oop oopByteSize equals: 24