tests
testBytecodeAtPut
	compiledMethodObject bytecodeAt: 1 put: 2.
	reifiedMemory update.
	compiledMethodObject := compiledMethodObject reifyOop: compiledMethodObject address.
	self assert: (compiledMethodObject bytecodeAt: 1) equals: 2