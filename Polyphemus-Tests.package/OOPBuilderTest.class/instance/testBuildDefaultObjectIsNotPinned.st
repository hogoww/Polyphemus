tests-default
testBuildDefaultObjectIsNotPinned
	reifiedOop := self buildObject.
	
	self deny: reifiedOop isPinnedOop