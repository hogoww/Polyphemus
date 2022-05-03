tests
testOopClassAddress
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 0).
	self assert: (memory isInClassTable: oop oopClassAddress).