tests-testing
testClassIsClassOop
	| smallIntegerClass |
	smallIntegerClass := SpurObject on: (memory fetchClassOf: (memory integerObjectOf: 1)) image: image.
	self assert: smallIntegerClass isClassOop