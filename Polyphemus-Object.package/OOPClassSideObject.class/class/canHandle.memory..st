instance creation
canHandle: anAddress memory: aMemory
	^ (aMemory fetchClassOf: anAddress) = aMemory metaclass