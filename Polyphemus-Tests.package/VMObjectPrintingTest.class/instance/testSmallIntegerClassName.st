tests-printing-classes
testSmallIntegerClassName
	| smallIntegerClass |
	smallIntegerClass := self objectForOop: (memory fetchClassOf: (memory integerObjectOf: 1)).
	self assert: smallIntegerClass className equals: 'PCSmallInteger'