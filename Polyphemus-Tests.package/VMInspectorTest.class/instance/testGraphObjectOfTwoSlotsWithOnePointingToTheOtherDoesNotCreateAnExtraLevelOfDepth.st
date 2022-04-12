tests-graphObject
testGraphObjectOfTwoSlotsWithOnePointingToTheOtherDoesNotCreateAnExtraLevelOfDepth
	| oop firstSlot secondSlot |
	oop := SpurObject on: (self newObjectWithSlots: 2) image: image.
	firstSlot := SpurObject on: (self newObjectWithSlots: 1) image: image.
	secondSlot := SpurObject on: (self newObjectWithSlots: 0) image: image.
	oop slotAt: 1 put: firstSlot.
	oop slotAt: 2 put: secondSlot.
	firstSlot slotAt: 1 put: secondSlot.
	self assert: oop objectGraph size equals: 2.