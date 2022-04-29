tests
testObjectWithThreeHundredSlotNumSlot
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 300).
	self assert: oop numSlots equals: 300.