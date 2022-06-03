testing
canHandle: anAddress memory: aMemory

^ (aMemory fetchClassOf: (aMemory fetchClassOf: anAddress)) = aMemory traitedMetaclass