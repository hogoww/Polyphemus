test-layouts
testBuild64BitIndexableHasElements
	oopBuilder 
		oopFormat: 9;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop numElements equals: 10