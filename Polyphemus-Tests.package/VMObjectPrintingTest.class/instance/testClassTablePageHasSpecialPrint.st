tests-printing
testClassTablePageHasSpecialPrint
	| oop |
	oop := self reifyOop: memory classTableFirstPage.
	self assert: 'Class Table Page' equals: oop printString