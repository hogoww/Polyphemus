test-objectGraph
testObjectGraphOnNodeWithNoSlotsSelectOnlyItself
	
	| oop |
	oop := self newZeroSizedObject.
	
	self updateSpaces.
	newSpace objectGraphOf: (newSpace oopForAddress: oop) model.
	
	self assert: (newSpace oopForAddress: oop) paint equals: newSpace colorProvider initialColorForSelectedObject.