tests-printing
testRememberSetHasSpecialPrint
	| oop |
	oop := self reifyOop: memory rememberedSetObj.
	self assert: 'Remembered Set' equals: oop printString