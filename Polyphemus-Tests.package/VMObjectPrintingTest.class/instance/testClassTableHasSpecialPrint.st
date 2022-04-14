tests-printing
testClassTableHasSpecialPrint
	| oop |
	oop := self objectForOop: memory classTableRootObj.
	self assert: 'classTable' equals: oop printString