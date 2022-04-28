test
testFirstLiteralIsInSlotTwo
	self assert: (compiledMethodObject slotAt: 2) equals: (compiledMethodObject literalAt: 1)