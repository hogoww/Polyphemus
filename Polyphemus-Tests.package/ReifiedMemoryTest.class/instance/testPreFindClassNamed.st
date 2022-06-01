running
testPreFindClassNamed
	self newMemorySnapshot.
	self assert: (reifiedMemory preFindClassNamed: #PCSmallInteger) 
		equals: (self reifyOop: (memory integerObjectOf: 42))oopClass address