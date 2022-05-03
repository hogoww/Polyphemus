tests-graphObject
testGraphObjectOfEmptyObjectIsJustTheObject
	| oop |
	oop := self reifyOop: self newZeroSizedObject.
	self assert: oop objectGraph size equals: 1.
	self assert: oop objectGraph first anyOne equals: oop