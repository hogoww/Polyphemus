tests-default
testBuildDefaultObjectCreatesObjectWithoutSlots
	reifiedOop := self buildObject.
	
	self assert: reifiedOop numSlots equals: 0