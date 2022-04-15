test-objectGraph
testObjectGraphOnNodeWithNoSlotsSelectOnlyItself
	
	| oop oopObject |
	oop := self newZeroSizedObject.
	
	self updateSpaces.
	oopObject := (newSpace oopForAddress: oop).
	newSpace objectGraphOf: oopObject model.
	
	"We also have the freelist from set upm that survived and is not tenured"
	self assert: oopObject paint equals: newSpace colorProvider initialSelectionColor.