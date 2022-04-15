tests-graphObject
testGraphObjectOfTwoSlotsWithOnePointingToTheOtherDoesNotCreateAnExtraLevelOfDepth
	| oop firstSlot secondSlot |
	oop := self objectForOop: (self newObjectWithSlots: 2).
	firstSlot := self objectForOop: (self newObjectWithSlots: 1).
	secondSlot := self objectForOop: (self newObjectWithSlots: 0).
	oop slotAt: 1 put: firstSlot.
	oop slotAt: 2 put: secondSlot.
	firstSlot slotAt: 1 put: secondSlot.
	self assert: oop objectGraph size equals: 2.