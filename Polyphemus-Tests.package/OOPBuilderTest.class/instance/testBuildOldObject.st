tests
testBuildOldObject
	oopBuilder oopIsOld: true.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop isOldOop