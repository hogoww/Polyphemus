tests-printing
testRememberSetHasSpecialPrint
	| oop |
	oop := self objectForOop: memory rememberedSetObj.
	self assert: 'rememberSet' equals: oop printString