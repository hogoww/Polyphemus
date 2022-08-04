test-specialObjects
testReifiedTrueObjectIsTrueObject
	self assert: reifiedMemory trueObject
		equals: reifiedMemory reifiedTrueObject address.