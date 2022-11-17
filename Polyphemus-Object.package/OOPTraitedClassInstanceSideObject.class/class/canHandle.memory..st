instance creation
canHandle: anAddress memory: aMemory
	| traitedMetaclass |
	(aMemory formatOf: anAddress) = 1 ifFalse: [ ^ false ].
	(aMemory isInClassTable: anAddress) ifFalse: [ ^ false ].
	
	traitedMetaclass := aMemory traitedMetaclassIndex.
	traitedMetaclass ifNil: [ ^ false ].
	
	^ (aMemory classIndexOf: (aMemory fetchClassOf: anAddress)) = traitedMetaclass