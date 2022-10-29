test-layouts
testBuild8BitIndexableCorrectsFormat
	oopBuilder 
		oopFormat: 23;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop numElements equals: 10