instance creation
canHandle: anAddress memory: aMemory
	^ (aMemory formatOf: anAddress) between: 10 and: 11