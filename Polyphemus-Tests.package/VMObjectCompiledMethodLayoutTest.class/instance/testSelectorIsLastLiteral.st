tests
testSelectorIsLastLiteral
	"Careful, literalAt: anIndex - 1 == slotAt: anIndex "
	self assert: compiledMethodObject lastLiteral
		equals: (compiledMethodObject reifiedSlotAt: compiledMethodObject numberOfLiterals + 1)