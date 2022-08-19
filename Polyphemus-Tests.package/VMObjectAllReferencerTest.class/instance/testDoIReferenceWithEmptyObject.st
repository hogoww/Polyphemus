tests-graphObject
testDoIReferenceWithEmptyObject
	
	| oop |
	oop := self reifyOop: (memory integerObjectOf: 1).
	self deny: (oop references: oop).