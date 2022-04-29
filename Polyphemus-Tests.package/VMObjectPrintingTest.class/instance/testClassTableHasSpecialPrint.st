tests-printing
testClassTableHasSpecialPrint
	| oop |
	oop := self reifyOop: memory classTableRootObj.
	self assert: 'classTable' equals: oop printString