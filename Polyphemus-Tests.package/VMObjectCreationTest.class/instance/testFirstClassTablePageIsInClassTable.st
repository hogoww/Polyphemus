tests-classTable
testFirstClassTablePageIsInClassTable
	| oop classTable |
	oop := memory classTableFirstPage.
	classTable := OOPClassTableObject classTableFor: memory.
	self assert: (classTable isInClassTable: oop)