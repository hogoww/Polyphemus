test-objectGraph
testObjectGraphOnMiddleNodeSelectOnlyLastTwoNodes
	| oop firstLayer secondLayer |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	firstLayer := self reifyOop: (self newObjectWithSlots: 1).
	secondLayer := self reifyOop: (self newObjectWithSlots: 0).
	oop slotAt: 1 put: firstLayer.
	firstLayer slotAt: 1 put: secondLayer.
	
	self updateSpaces.
	newSpace objectGraphOf: (newSpace oopForAddress: firstLayer) model.
	
	self assert: (newSpace oopForAddress: oop) paint equals: newSpace colorProvider colorForNonSelectedObject.
	self assert: (newSpace oopForAddress: firstLayer) paint equals: newSpace colorProvider initialColorForSelectedObject.
	self assert: (newSpace oopForAddress: secondLayer) paint equals: (newSpace colorProvider colorForDepth: 2).