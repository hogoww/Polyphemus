tests-classTable
testFirstClassTablePageIsIndexOneInClassTable
	| oop classTable |
	oop := memory classTableFirstPage.
	classTable := OOPClassTableObject classTableFor: image.
	self assert: (classTable indexFor: oop) equals: 1