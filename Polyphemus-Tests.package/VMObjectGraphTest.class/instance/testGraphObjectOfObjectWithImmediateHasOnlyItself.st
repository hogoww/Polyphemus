tests-graphObject
testGraphObjectOfObjectWithImmediateHasOnlyItself
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	oop slotAt: 1 put: (memory integerObjectOf: 1).
	self assert: oop objectGraph size equals: 1.