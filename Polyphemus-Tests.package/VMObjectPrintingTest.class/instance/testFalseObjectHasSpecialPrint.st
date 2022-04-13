tests-printing
testFalseObjectHasSpecialPrint
	| oop |
	oop := AbstractSpurEntity newFor: image falseObject value image: image.
	self assert: 'falseObject' equals: oop printString