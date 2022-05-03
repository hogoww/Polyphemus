tests-printing
testNilObjectHasSpecialPrint
	| oop |
	oop := self reifyOop: memory nilObject.
	self assert: 'nilObject' equals: oop printString