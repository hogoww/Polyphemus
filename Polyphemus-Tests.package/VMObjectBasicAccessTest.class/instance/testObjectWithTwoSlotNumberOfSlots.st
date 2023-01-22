tests
testObjectWithTwoSlotNumberOfSlots
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 2).
	self assert: oop oopNumberOfSlots equals: 2.