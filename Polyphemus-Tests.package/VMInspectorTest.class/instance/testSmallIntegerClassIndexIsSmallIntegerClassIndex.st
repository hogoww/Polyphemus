test-testing
testSmallIntegerClassIndexIsSmallIntegerClassIndex
	| smallIntegerClass object |
	smallIntegerClass := SpurObject on: (memory fetchClassOf: (memory integerObjectOf: 1)) image: image.
	object := SpurObject on: (memory integerObjectOf: 1) image: image.
	self assert: smallIntegerClass oopHash equals: object classIndex