tests
testObjectWithTwoSlotNumSlot
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 2).
	self assert: oop numSlots equals: 2.