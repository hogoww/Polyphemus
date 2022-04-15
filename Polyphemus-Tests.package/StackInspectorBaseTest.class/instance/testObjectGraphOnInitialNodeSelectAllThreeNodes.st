test-objectGraph
testObjectGraphOnInitialNodeSelectAllThreeNodes
	| oop firstLayer secondLayer oopObject |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	firstLayer := self objectForOop: (self newObjectWithSlots: 1).
	secondLayer := self objectForOop: (self newObjectWithSlots: 0).
	oop slotAt: 1 put: firstLayer.
	firstLayer slotAt: 1 put: secondLayer.
	
	self updateSpaces.
	oopObject := (newSpace oopForAddress: oop).
	newSpace objectGraphOf: oopObject model.
	
	"We also have the freelist from set upm that survived and is not tenured"
	self assert: oopObject paint equals: newSpace colorProvider initialSelectionColor.
	self assert: (newSpace oopForAddress: firstLayer) paint equals: (newSpace colorProvider selectionColorForDepth: 1).
	self assert: (newSpace oopForAddress: secondLayer) paint equals: (newSpace colorProvider selectionColorForDepth: 2).