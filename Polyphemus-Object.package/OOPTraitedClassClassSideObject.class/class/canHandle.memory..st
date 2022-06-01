testing
canHandle: anAddress memory: aMemory
	^ (aMemory fetchClassOf: anAddress) = aMemory traitedMetaclass