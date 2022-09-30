test-layouts
testBuild16BitIndexableHasElements
	oopBuilder 
		oopFormat: 12;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop numElements equals: 10