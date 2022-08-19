tests-classTable
testFirstClassTablePageIsIndexOneInClassTable
	| oop classTable |
	oop := memory classTableFirstPage.
	classTable := self reifyOop: memory classTableRootObj.
	self assert: (classTable indexForPage: oop) equals: 1