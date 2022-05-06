instance creation
canHandle: anAddress memory: aMemory
	^ (aMemory formatOf: anAddress) between: 12 and: 15