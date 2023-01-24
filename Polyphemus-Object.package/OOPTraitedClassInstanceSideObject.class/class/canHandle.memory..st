instance creation
canHandle: anAddress memory: aMemory
	(aMemory formatOf: anAddress) = 1 ifFalse: [ ^ false ].
	(aMemory isInClassTable: anAddress) ifFalse: [ ^ false ].
	
	^ (aMemory classIndexOf: (aMemory fetchClassOf: anAddress)) = aMemory traitedMetaclassIndex.