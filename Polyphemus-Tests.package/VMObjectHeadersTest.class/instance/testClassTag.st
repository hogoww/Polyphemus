tests
testClassTag
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 0 classIndex: 8).
	self assert: oop oopClassTag equals: 8