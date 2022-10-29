test-layouts
testBuildIndexableObjects
	oopBuilder 
		oopFormat: 2;
		oopNumberOfSlots: 10.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop numSlots equals: 10