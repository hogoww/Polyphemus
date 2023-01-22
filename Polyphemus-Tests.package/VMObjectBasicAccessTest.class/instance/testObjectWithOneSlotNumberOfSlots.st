tests
testObjectWithOneSlotNumberOfSlots
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	self assert: oop oopNumberOfSlots equals: 1.