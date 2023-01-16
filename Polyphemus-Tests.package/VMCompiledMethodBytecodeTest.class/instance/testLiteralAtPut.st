tests
testLiteralAtPut
	compiledMethodObject literalAt: 1 put: 42.
	reifiedMemory update.
	compiledMethodObject := compiledMethodObject reifyOop: compiledMethodObject address.
	self assert: (compiledMethodObject literalAt: 1) equals: 42