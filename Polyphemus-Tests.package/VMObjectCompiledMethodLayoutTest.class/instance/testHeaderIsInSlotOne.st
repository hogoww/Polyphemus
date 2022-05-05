tests
testHeaderIsInSlotOne
	self assert: (compiledMethodObject reifiedSlotAt: 1) equals: compiledMethodObject methodHeader