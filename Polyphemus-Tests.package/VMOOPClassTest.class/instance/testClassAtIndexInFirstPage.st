tests
testClassAtIndexInFirstPage
	
	self assert: (reifiedMemory reifiedClassTable classAtIndex: 4) equals: (reifiedMemory reifiedClassTable classAtIndex: 2)