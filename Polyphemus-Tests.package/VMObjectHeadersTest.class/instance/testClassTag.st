tests
testClassTag
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 0 classIndex: 1).
	self assert: oop oopClassTag equals: 1