tests-printing
testSpecialObjectArrayHasSpecialPrint
	| oop |
	self fail.
	oop := self objectForOop: memory freeListObj .
	self assert: 'falseObject' equals: oop printString