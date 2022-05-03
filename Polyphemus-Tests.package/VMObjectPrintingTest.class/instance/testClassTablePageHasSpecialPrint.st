tests-printing
testClassTablePageHasSpecialPrint
	| oop |
	oop := self reifyOop: memory classTableFirstPage.
	self assert: 'classTablePage' equals: oop printString