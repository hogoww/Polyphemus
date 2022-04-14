tests-printing
testSpecialObjectArrayHasSpecialPrint
	| oop |
	oop := self objectForOop: memory specialObjectsOop .
	self assert: 'specialObjectArray' equals: oop printString