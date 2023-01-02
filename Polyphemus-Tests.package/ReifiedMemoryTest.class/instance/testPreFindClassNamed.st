tests
testPreFindClassNamed
	self assert: (reifiedMemory preFindClassNamed: #PCSmallInteger)
		equals: (self reifyOop: (memory integerObjectOf: 42)) oopClass oopClassIndex - 1