instance creation
canHandle: anAddress memory: aMemory
	^(aMemory formatOf: anAddress) between: 16 and: 23