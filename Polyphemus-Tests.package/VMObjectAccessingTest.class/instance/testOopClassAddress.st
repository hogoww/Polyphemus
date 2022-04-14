tests
testOopClassAddress
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 0).
	self assert: (memory isInClassTable: oop oopClassAddress).