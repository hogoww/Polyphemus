instance creation
canHandle: anAddress memory: aMemory
	| traitedMetaclass |
	(aMemory formatOf: anAddress) = 1 ifFalse: [ ^ false ].
	
	traitedMetaclass := aMemory traitedMetaclass.
	traitedMetaclass ifNil: [ ^ false ].

	^ (aMemory fetchClassOf: anAddress) = aMemory traitedMetaclass