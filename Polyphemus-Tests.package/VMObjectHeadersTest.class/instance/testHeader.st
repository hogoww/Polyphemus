tests
testHeader
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 0).
	self assert: oop oopHeader equals: 33554448