tests
testRecoverCorruptedFreeListLastFreeObject

	| freeObjects |
	reifiedMemory := PreReifiedMemory onWithFlagFreeTree: memory.
	
	freeObjects := reifiedMemory select: [ :anOop | anOop isFreeOop ].
	
	self assert: freeObjects size equals: 1.
	