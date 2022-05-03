tests-printing
testTrueObjectHasSpecialPrint
	| oop |
	oop := self reifyOop: memory trueObject.
	self assert: 'trueObject' equals: oop printString