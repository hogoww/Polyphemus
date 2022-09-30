tests-default
testBuildDefaultObjectIsNotRemembered
	reifiedOop := self buildObject.
	
	self deny: reifiedOop isRememberedOop