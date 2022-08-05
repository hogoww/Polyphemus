test-specialObjects
testReifiedFalseObjectIsFalseObject
	self assert: reifiedMemory falseObject
		equals: reifiedMemory reifiedFalseObject address.