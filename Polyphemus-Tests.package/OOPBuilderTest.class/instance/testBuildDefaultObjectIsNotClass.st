tests-default
testBuildDefaultObjectIsNotClass
	reifiedOop := self buildObject.
	
	self deny: reifiedOop isClassOop