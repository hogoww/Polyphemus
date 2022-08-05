test-specialObjects
testReifiedClassTableIsClassTable
	self assert: reifiedMemory classTableRootObj 
		equals: reifiedMemory reifiedClassTable address.