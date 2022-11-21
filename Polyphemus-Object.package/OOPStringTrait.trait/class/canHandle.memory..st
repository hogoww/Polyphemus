testing
canHandle: anAddress memory: aMemory
	^(super canHandle: anAddress  memory: aMemory) and: [ 
		aMemory stringClassIndexes anySatisfy: [ : aClassAddress |
			(aMemory classIndexOf: anAddress) = aClassAddress ]]