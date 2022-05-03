tests-printing
testFalseObjectHasSpecialPrint
	| oop |
	oop := self reifyOop: memory falseObject.
	self assert: 'falseObject' equals: oop printString