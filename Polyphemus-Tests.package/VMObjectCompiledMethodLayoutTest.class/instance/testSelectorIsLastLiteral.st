test
testSelectorIsLastLiteral
	"Careful, literalAt: anIndex - 1 == slotAt: anIndex "
	self assert: compiledMethodObject lastLiteral
		equals: (compiledMethodObject slotAt: compiledMethodObject numberOfLiterals + 1)