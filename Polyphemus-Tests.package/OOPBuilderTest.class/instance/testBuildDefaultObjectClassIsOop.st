tests-default
testBuildDefaultObjectClassIsOop
	reifiedOop := self buildObject.
	
	self assert: reifiedOop oopClass isInstanceSideOop