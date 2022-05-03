tests-graphObject
testGraphObjectOfObjectWithOddIntegerShouldNotRaiseUnalignedError
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	oop slotAt: 1 put: (memory integerObjectOf: 1).
	oop objectGraph.
	self shouldnt: [ oop objectGraph ] raise: Error description: 'unaligned access'