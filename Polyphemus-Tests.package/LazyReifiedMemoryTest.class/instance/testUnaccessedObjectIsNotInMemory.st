tests
testUnaccessedObjectIsNotInMemory
	self assert: (reifiedMemory objectAt: reifiedMemory trueObject) isNil