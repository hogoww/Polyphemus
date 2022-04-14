tests-printing
testClassTablePageHasSpecialPrint
	| oop |
	oop := self objectForOop: memory classTableFirstPage.
	self assert: 'classTablePage' equals: oop printString