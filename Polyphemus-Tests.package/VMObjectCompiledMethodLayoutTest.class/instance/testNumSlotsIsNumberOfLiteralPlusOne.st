tests
testNumSlotsIsNumberOfLiteralPlusOne
	self assert: compiledMethodObject oopNumberOfSlots 
		equals: compiledMethodObject numberOfLiterals + 1 "method header"