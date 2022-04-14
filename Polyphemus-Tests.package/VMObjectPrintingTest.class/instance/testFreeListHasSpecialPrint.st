tests-printing
testFreeListHasSpecialPrint
	| oop |
	oop := self objectForOop: memory freeListsObject.
	self assert: 'freeLists' equals: oop printString