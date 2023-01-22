test-layouts
testBuild16BitIndexableCorrectsFormat
	oopBuilder 
		oopFormat: 11;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop oopNumberOfIndexed equals: 10