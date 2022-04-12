tests-graphObject
testGraphObjectOfObjectWithImmediateHasOnlyItself
	| oop |
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
	oop slotAt: 1 put: (memory integerObjectOf: 1).
	self assert: oop objectGraph size equals: 1.