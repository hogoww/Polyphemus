test-allReferencers
testAllReferencerOfObjectWithOneReferencerColorsReferencer
	
	| oop oopSlot slot |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	slot := self objectForOop: self newZeroSizedObject.
	oop slotAt: 1 put: slot.
	
	self updateSpaces.
	oopSlot := (newSpace oopForAddress: slot).
	newSpace allReferencersOf: oopSlot model.
	
	self assert: oopSlot paint equals: newSpace colorProvider selectedColor