tests-printing
testNilObjectHasSpecialPrint
	| oop |
	oop := self objectForOop: memory nilObject.
	self assert: 'nilObject' equals: oop printString