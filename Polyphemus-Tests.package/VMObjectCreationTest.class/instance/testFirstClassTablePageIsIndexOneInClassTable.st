tests-classTable
testFirstClassTablePageIsIndexOneInClassTable
	| oop classTable |
	oop := memory classTableFirstPage.
	classTable := OOPClassTableObject classTableFor: memory.
	self assert: (classTable indexFor: oop) equals: 1