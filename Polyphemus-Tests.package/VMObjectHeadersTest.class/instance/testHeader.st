tests
testHeader
	| oop objectOop |
	oop := (self newObjectWithSlots: 1).
	objectOop := self reifyOop: oop.
	self assert: objectOop oopHeader equals: (memory baseHeader: oop)