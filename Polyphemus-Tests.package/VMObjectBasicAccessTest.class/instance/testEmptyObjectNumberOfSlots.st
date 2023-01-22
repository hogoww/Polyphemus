tests
testEmptyObjectNumberOfSlots
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 0).
	self assert: oop oopNumberOfSlots equals: 0.