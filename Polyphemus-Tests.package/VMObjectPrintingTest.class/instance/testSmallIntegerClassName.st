tests-printing-classes
testSmallIntegerClassName
	| smallIntegerClass |
	smallIntegerClass := AbstractSpurEntity newFor: (memory fetchClassOf: (memory integerObjectOf: 1)) image: image.
	self assert: smallIntegerClass className equals: 'PCSmallInteger'