test-color
testOldSpaceObjectIsColoredProperly
	
	| oop |
	oop := self newOldSpaceObjectWithSlots: 1 classIndex: 90.
	self updateSpaces.
	
	self assert: (oldSpace oopWithAddress: oop)  paint equals: oldSpace colorProvider regularOopColor.