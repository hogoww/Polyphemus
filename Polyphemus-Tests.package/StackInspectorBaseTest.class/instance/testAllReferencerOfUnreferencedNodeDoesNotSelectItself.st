test-allReferencers
testAllReferencerOfUnreferencedNodeDoesNotSelectItself
	
	| oop oopObject |
	oop := self reifyOop: self newZeroSizedObject.
	
	self updateSpaces.
	oopObject := (newSpace oopForAddress: oop).
	newSpace allReferencersOf: oopObject model.

	oopObject := (newSpace oopForAddress: oop).
	self assert: oopObject paint equals: newSpace colorProvider colorForNonSelectedObject