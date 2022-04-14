tests
testObjectWithOneSlotNumSlot
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	self assert: oop numSlots equals: 1.