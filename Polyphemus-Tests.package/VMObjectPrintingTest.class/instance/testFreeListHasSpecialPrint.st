tests-printing
testFreeListHasSpecialPrint
	| oop |
	oop := self reifyOop: memory freeListsObject.
	self assert: 'freeLists' equals: oop printString