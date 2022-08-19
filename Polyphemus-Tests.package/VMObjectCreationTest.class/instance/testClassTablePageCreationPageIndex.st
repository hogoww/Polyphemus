tests-classTable
testClassTablePageCreationPageIndex
	| oop |
	oop := self reifyOop: memory classTableFirstPage.
	self assert: oop oopPageIndex equals: 1