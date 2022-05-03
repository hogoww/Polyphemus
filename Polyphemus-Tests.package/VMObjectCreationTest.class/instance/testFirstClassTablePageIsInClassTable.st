tests-classTable
testFirstClassTablePageIsInClassTable
	| oop classTable |
	oop := memory classTableFirstPage.
	classTable := OOPClassTableObject classTableFor: image.
	self assert: (classTable isInClassTable: oop)