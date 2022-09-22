instance creation
canHandle: anAddress memory: aMemory
	^ (aMemory formatOf: anAddress) = 1 and: [
		(aMemory isInClassTable: anAddress) and: [ 
		(aMemory fetchClassOf: anAddress) = aMemory metaclass ]]