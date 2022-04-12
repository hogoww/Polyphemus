tests-graphObject
testGraphObjectOfObjectWithOddIntegerShouldNotRaiseUnalignedError
	| oop |
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
	oop slotAt: 1 put: (memory integerObjectOf: 1).
	oop objectGraph.
	self shouldnt: [ oop objectGraph ] raise: Error description: 'unaligned access'