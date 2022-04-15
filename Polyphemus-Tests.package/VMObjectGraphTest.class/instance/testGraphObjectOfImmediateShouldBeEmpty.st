tests-graphObject
testGraphObjectOfImmediateShouldBeEmpty
	| oop |
	oop := self objectForOop: (memory integerObjectOf: 1).
	self assert: oop objectGraph size equals: 0.