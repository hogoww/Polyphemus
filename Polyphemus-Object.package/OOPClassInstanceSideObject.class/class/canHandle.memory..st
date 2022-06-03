instance creation
canHandle: anAddress memory: aMemory
	^ (aMemory isInClassTable: anAddress) and: [ 
		(OOPClassClassSideObject canHandle: anAddress memory: aMemory) not ]