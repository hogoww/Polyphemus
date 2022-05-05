tests-graphObject
testGraphObjectOfTwoSlotObjectHasBothTheInitialObjectAndItsSlots
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 2).
	oop slotAt: 1 put: self newZeroSizedObject.
	oop slotAt: 2 put: self newZeroSizedObject.
	self assert: oop objectGraph size equals: 2."depth = 2"
	self assert: oop objectGraph second size equals: 2.
	self assert: oop objectGraph second second equals: (oop reifiedSlotAt: 2)