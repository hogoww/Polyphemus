instance creation
canHandle: anAddress memory: aMemory
	^(super canHandle: anAddress  memory: aMemory) and: [ 
		aMemory stringClasses anySatisfy: [ : aClassAddress |
			(aMemory fetchClassOf: anAddress) = aClassAddress ]]