tests-printing
testSpecialObjectArrayHasSpecialPrint
	| oop |
	oop := self reifyOop: memory specialObjectsOop .
	self assert: 'specialObjectArray' equals: oop printString