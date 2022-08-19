tests
testFreezeMemory
	reifiedMemory freezeMemory.
	self should: [ reifiedMemory update ] raise: FrozenMemoryError