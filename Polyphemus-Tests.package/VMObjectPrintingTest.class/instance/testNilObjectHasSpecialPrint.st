tests-printing
testNilObjectHasSpecialPrint
	| oop |
	oop := AbstractSpurEntity newFor: image nilObject value image: image.
	self assert: 'nilObject' equals: oop printString