tests
testObjectWithThreeHundredSlotNumberOfSlots
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 300).
	self assert: oop oopNumberOfSlots equals: 300.