tests-graphObject
testGraphObjectOfImmediateShouldBeEmpty
	| oop |
	oop := SpurObject on: (memory integerObjectOf: 1) image: image.
	self assert: oop objectGraph size equals: 0.