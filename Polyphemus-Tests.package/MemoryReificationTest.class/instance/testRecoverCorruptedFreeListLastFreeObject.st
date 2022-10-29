tests
testRecoverCorruptedFreeListLastFreeObject

	| freeObjects |
	reifiedMemory := FullyReifiedMemory onWithFlagFreeTree: memory.
	
	freeObjects := reifiedMemory select: [ :anOop | anOop isFreeOop ].
	
	self assert: freeObjects size equals: 1.
	