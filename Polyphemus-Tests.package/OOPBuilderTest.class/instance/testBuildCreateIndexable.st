tests
testBuildCreateIndexable
	oopBuilder oopFormat: 2.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop oopFormat equals: 2