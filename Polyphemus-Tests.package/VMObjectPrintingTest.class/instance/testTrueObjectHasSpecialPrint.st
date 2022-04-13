tests-printing
testTrueObjectHasSpecialPrint
	| oop |
	oop := AbstractSpurEntity newFor: image trueObject value image: image.
	self assert: 'trueObject' equals: oop printString