instance creation
canHandle: anAddress memory: aMemory

	^ aMemory stringClasses anySatisfy: [ : aClassAddress |
		(aMemory fetchClassOf: anAddress) = aClassAddress ]