tests-graphObject
testGraphObjectWithObjectPointingToItselfDoesNotAddExtraLayer
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	oop slotAt: 1 put: oop address value.
	self assert: oop objectGraph size equals: 1.