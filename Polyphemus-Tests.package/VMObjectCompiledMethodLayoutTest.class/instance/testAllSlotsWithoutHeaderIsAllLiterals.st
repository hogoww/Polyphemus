tests
testAllSlotsWithoutHeaderIsAllLiterals
	| slots |
	slots := compiledMethodObject allReifiedSlots asOrderedCollection.
	slots removeFirst.
	self assert: slots equals: compiledMethodObject allLiterals asOrderedCollection