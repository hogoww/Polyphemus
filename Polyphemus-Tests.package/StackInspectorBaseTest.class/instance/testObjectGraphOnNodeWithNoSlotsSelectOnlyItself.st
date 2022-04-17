test-objectGraph
testObjectGraphOnNodeWithNoSlotsSelectOnlyItself
	
	| oop oopObject |
	oop := self newZeroSizedObject.
	
	self updateSpaces.
	oopObject := (newSpace oopForAddress: oop).
	newSpace objectGraphOf: oopObject model.
	
	self assert: oopObject paint equals: newSpace colorProvider initialSelectionColor.