tests
testOopClassIndex

	| integerClass |
	integerClass := (self reifyOop: (memory integerObjectOf: 42)) oopClass.
	
	self assert: integerClass address equals: (reifiedMemory reifiedClassTable classAtIndex: integerClass oopClassIndex + 1)