tests-printing
testTrueObjectHasSpecialPrint
	| oop |
	oop := self objectForOop: memory trueObject.
	self assert: 'trueObject' equals: oop printString