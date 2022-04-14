tests
testObjectWithTwoSlotNumSlot
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 2).
	self assert: oop numSlots equals: 2.