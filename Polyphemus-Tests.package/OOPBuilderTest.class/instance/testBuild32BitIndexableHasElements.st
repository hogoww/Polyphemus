test-layouts
testBuild32BitIndexableHasElements
	oopBuilder 
		oopFormat: 10;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.

	self assert: reifiedOop numElements equals: 10