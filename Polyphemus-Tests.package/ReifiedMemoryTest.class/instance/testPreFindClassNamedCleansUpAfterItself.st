running
testPreFindClassNamedCleansUpAfterItself
	
	self assert: (reifiedMemory preFindClassNamed: #PCSmallInteger) 
		equals: (memory fetchClassOf: (memory integerObjectOf: 42))