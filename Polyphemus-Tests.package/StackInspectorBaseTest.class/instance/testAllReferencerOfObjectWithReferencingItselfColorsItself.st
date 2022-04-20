test-allReferencers
testAllReferencerOfObjectWithReferencingItselfColorsItself
	
	| oop objectOop |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	oop slotAt: 1 put: oop.
	
	self updateSpaces.
	objectOop := newSpace oopForAddress: oop.
	newSpace allReferencersOf: objectOop model.
	objectOop := newSpace oopForAddress: oop.
	
	self assert: objectOop paint equals: newSpace colorProvider colorForSelectedObject