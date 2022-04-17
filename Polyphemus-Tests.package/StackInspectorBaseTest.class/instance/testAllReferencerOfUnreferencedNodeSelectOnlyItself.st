test-allReferencers
testAllReferencerOfUnreferencedNodeSelectOnlyItself
	
	| oop oopObject slot |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	slot := self objectForOop: self newZeroSizedObject.

	
	self updateSpaces.
	oopObject := (newSpace oopForAddress: oop).
	newSpace allReferencersOf: oopObject model.
	
	self assert: oopObject paint equals: newSpace colorProvider selectedColor.