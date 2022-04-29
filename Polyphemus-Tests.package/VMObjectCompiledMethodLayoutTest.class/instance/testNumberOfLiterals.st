tests
testNumberOfLiterals
	self assert: compiledMethodObject numberOfLiterals 
		equals: (memory literalCountOf: compiledMethodObject address)