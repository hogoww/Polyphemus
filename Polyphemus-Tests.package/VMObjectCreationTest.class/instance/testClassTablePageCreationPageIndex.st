tests-classTable
testClassTablePageCreationPageIndex
	| oop |
	oop := self reifyOop: memory classTableFirstPage.
	self assert: oop pageIndex equals: 1