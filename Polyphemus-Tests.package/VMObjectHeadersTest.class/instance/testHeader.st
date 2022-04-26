tests
testHeader
	| oop objectOop |
	oop := (self newObjectWithSlots: 1).
	objectOop := self objectForOop: oop.
	self assert: objectOop oopHeader equals: (memory baseHeader: oop)