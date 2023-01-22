tests-default
testBuildDefaultObjectCreatesObjectWithoutSlots
	reifiedOop := self buildObject.
	
	self assert: reifiedOop oopNumberOfSlots equals: 0