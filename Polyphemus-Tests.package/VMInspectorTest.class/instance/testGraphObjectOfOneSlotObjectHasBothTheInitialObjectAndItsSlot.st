tests-graphObject
testGraphObjectOfOneSlotObjectHasBothTheInitialObjectAndItsSlot
	| oop |
	oop := SpurObject on: (self newObjectWithSlots: 1) image: image.
	oop slotAt: 1 put: self newZeroSizedObject.
	self assert: oop objectGraph size equals: 2."depth = 2"
	self assert: oop objectGraph second size equals: 1.
	self assert: oop objectGraph second first equals: (oop slotAt: 1)