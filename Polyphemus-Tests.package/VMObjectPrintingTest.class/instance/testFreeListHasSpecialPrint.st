tests-printing
testFreeListHasSpecialPrint
	| oop |
	oop := self reifyOop: memory freeListsObject.
	self assert: 'Free Lists' equals: oop printString