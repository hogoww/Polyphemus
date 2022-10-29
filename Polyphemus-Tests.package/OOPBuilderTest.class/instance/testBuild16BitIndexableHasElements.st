test-layouts
testBuild16BitIndexableHasElements
	oopBuilder 
		oopFormat: 15;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop numElements equals: 10