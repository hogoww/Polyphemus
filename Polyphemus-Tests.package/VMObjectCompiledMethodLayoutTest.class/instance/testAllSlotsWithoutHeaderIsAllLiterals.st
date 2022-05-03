tests
testAllSlotsWithoutHeaderIsAllLiterals
	| slots |
	slots := compiledMethodObject allSlots asOrderedCollection.
	slots removeFirst.
	self assert: slots equals: compiledMethodObject allLiterals asOrderedCollection