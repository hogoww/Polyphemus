tests
testClassTag
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 0 classIndex: 1).
	self assert: oop oopClassTag equals: 1