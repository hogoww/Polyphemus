tests-default
testBuildDefaultObjectIsNotImmutable
	reifiedOop := self buildObject.
	
	self deny: reifiedOop isImmutableOop 