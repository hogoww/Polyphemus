tests-printing-classes
testSmallIntegerClassClassName
	| smallIntegerClass |
	smallIntegerClass := self reifyOop: 
		(memory fetchClassOf: 
			(memory fetchClassOf: 
				(memory integerObjectOf: 1))).
	self assert: smallIntegerClass oopName equals: 'PCSmallInteger class'