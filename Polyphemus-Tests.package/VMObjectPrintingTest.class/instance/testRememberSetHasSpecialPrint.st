tests-printing
testRememberSetHasSpecialPrint
	| oop |
	oop := self reifyOop: memory rememberedSetObj.
	self assert: 'rememberSet' equals: oop printString