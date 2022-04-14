tests
testOopClass
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 1 ).
	self assert: oop oopClass isClassOop