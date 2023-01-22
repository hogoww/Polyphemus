test-layouts
testBuildIndexableWithInstVarObjects
	oopBuilder 
		oopFormat: 3;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop oopNumberOfSlots equals: 10