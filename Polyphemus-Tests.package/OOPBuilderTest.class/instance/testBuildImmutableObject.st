tests
testBuildImmutableObject
	oopBuilder oopIsImmutable: true.
	reifiedOop := self buildObject.
	
	self assert: reifiedOop isImmutableOop 