tests
testByteSizeOfOneSlotObject
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	self assert: oop oopByteSize equals: 16