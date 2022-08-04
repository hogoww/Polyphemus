test-specialObjects
testReifiedFreeListsIsFreeLists
	self assert: reifiedMemory freeListsObj
		equals: reifiedMemory reifiedFreeLists address.