tests-printing
testClassTableHasSpecialPrint
	| oop |
	oop := self reifyOop: memory classTableRootObj.
	self assert: 'Class Table' equals: oop printString