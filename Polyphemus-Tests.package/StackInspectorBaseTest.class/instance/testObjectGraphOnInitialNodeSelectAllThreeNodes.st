test-objectGraph
testObjectGraphOnInitialNodeSelectAllThreeNodes
	| oop firstLayer secondLayer |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	firstLayer := self objectForOop: (self newObjectWithSlots: 1).
	secondLayer := self objectForOop: self newZeroSizedObject.
	oop slotAt: 1 put: firstLayer.
	firstLayer slotAt: 1 put: secondLayer.
	
	self updateSpaces.
	newSpace objectGraphOf: (newSpace oopForAddress: oop) model.

	self assert: (newSpace oopForAddress: oop) paint equals: newSpace colorProvider initialColorForSelectedObject.
	self assert: (newSpace oopForAddress: firstLayer) paint equals: (newSpace colorProvider colorForDepth: 1).
	self assert: (newSpace oopForAddress: secondLayer) paint equals: (newSpace colorProvider colorForDepth: 2).