test-layouts
testBuild64BitIndexableHasNoSlots
	oopBuilder 
		oopFormat: 9;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop oopNumberOfSlots equals: 0