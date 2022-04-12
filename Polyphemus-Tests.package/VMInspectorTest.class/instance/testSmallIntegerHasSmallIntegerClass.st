test-testing
testSmallIntegerHasSmallIntegerClass
	| smallIntegerClass object |
	smallIntegerClass := memory fetchClassOf: (memory integerObjectOf: 1).
	object := SpurObject on: (memory integerObjectOf: 1) image: image.
	self assert: smallIntegerClass equals: object basicClass