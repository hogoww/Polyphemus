tests-printing
testFalseObjectHasSpecialPrint
	| oop |
	oop := self objectForOop: memory falseObject.
	self assert: 'falseObject' equals: oop printString