tests-graphObject
testGraphObjectOfEmptyObjectIsJustTheObject
	| oop |
	oop := SpurObject on: self newZeroSizedObject image: image.
	self assert: oop objectGraph size equals: 1.
	self assert: oop objectGraph first anyOne equals: oop