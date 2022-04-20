test-allReferencers
testAllReferencerOfObjectWithOneReferencerColorsReferencer
	
	| oop slot slotObject objectOop |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	slot := self objectForOop: self newZeroSizedObject.
	oop slotAt: 1 put: slot.
	
	self updateSpaces.
	slotObject := newSpace oopForAddress: slot.
	newSpace allReferencersOf: slotObject model.
	objectOop := newSpace oopForAddress: oop.
	
	self assert: objectOop paint equals: newSpace colorProvider colorForSelectedObject