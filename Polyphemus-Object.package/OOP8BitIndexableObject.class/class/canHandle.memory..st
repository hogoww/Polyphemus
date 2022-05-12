instance creation
canHandle: anAddress memory: aMemory
	^false" (aMemory formatOf: anAddress) between: 16 and: 23"