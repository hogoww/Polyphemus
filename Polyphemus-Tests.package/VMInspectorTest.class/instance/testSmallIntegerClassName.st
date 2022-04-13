tests-printing
testSmallIntegerClassName
	| smallIntegerClass |
	smallIntegerClass := SpurObject on: (memory fetchClassOf: (memory integerObjectOf: 1)) image: image.
	self assert: smallIntegerClass asSpurClass className equals: 'PCSmallInteger'