instance creation
canHandle: anAddress memory: aMemory
	^ (aMemory isOopCompiledMethod: anAddress) and: [ (aMemory numSlotsOf: anAddress) > 2 ]