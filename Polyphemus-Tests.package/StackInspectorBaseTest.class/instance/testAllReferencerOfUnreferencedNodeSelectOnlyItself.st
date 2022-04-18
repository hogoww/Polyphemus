test-allReferencers
testAllReferencerOfUnreferencedNodeSelectOnlyItself
	
	| oop oopObject |
	oop := self objectForOop: self newZeroSizedObject.
	
	self updateSpaces.
	oopObject := (newSpace oopForAddress: oop).
	newSpace allReferencersOf: oopObject model.
	
	self assert: oopObject paint equals: newSpace colorProvider colorForSelectedObject