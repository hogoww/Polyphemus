tests
testFirstLiteralIsInSlotTwo
	self assert: (compiledMethodObject reifiedSlotAt: 2) equals: (compiledMethodObject literalAt: 1)