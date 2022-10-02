tests-default
testBuildDefaultObjectCreatesObjectInNewSpace
	reifiedOop := self buildObject.
	
	self deny: reifiedOop isOldOop