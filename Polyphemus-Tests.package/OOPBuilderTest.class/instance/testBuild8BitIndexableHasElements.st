test-layouts
testBuild8BitIndexableHasElements
	oopBuilder 
		oopFormat: 16;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop numElements equals: 10