tests-graphObject
testGraphObjectOfTwoSlotsWithOnePointingToTheOtherDoesNotCreateAnExtraLevelOfDepth
	| oop firstSlot secondSlot |
	oop := self reifyOop: (self newObjectWithSlots: 2).
	firstSlot := self reifyOop: (self newObjectWithSlots: 1).
	secondSlot := self reifyOop: (self newObjectWithSlots: 0).
	oop slotAt: 1 put: firstSlot.
	oop slotAt: 2 put: secondSlot.
	firstSlot slotAt: 1 put: secondSlot.
	self assert: oop objectGraph size equals: 2.