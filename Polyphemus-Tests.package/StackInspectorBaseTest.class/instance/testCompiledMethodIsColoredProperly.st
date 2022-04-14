test-color
testCompiledMethodIsColoredProperly
	
	| oop |
	self fail.
	oop := self newOldSpaceObjectWithSlots: 1 classIndex: 90.
	self updateSpaces.
	
	self assert: (oldSpace oopForAddress: oop)  paint equals: oldSpace colorProvider regularOopColor.