tests-classTable
testFirstClassTablePageIsInClassTable
	| oop classTable |
	oop := memory classTableFirstPage.
	classTable := self reifyOop: memory classTableRootObj..
	self assert: (classTable isInClassTable: oop)