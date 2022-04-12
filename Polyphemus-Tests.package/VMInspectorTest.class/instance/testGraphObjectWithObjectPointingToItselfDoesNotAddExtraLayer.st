tests-graphObject
testGraphObjectWithObjectPointingToItselfDoesNotAddExtraLayer
	| oop |
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
	oop slotAt: 1 put: oop address value.
	self assert: oop objectGraph size equals: 1.