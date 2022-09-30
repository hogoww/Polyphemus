tests-printing-classes
testSmallIntegerClassName
	| smallIntegerClass |
	smallIntegerClass := self reifyOop: (memory fetchClassOf: (memory integerObjectOf: 1)).
	self assert: smallIntegerClass oopName equals: 'PCSmallInteger'