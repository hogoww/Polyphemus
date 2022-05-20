instance creation
canHandle: anAddress memory: aMemory
	^ (aMemory isInClassTable: anAddress) and: [ 
		(OOPClassSideObject canHandle: anAddress memory: aMemory) not ]