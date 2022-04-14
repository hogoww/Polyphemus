tests
testObjectWithThreeHundredSlotNumSlot
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 300).
	self assert: oop numSlots equals: 300.