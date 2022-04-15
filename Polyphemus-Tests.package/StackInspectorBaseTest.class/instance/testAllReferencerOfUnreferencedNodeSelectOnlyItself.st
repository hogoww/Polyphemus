test-objectGraph
testAllReferencerOfUnreferencedNodeSelectOnlyItself
	
	| oop oopObject slot |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	slot := self objectForOop: self newZeroSizedObject.

	
	self updateSpaces.
	oopObject := (newSpace oopForAddress: oop).
	newSpace allReferencersOf: oopObject model.
	
	"We also have the freelist from set upm that survived and is not tenured"
	self assert: oopObject paint equals: newSpace colorProvider initialSelectionColor.