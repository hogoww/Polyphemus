tests
testHeader
	compiledMethodObject methodHeader: 42.
	reifiedMemory update.
	compiledMethodObject := compiledMethodObject reifyOop: compiledMethodObject address.
	self assert: compiledMethodObject methodHeader equals: 42 