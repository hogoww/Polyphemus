tests
testOopClass
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	self assert: oop oopClass isClassOop