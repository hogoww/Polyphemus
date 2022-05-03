tests
testObjectWithOneSlotNumSlot
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	self assert: oop numSlots equals: 1.