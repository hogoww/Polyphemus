tests-classTable
testClassTablePageCreationPageIndex
	| oop |
	oop := self reifyOop: memory classTableFirstPage.
	self assert: oop isClassTablePageOop pageIndex equals: 1