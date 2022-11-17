instance creation
canHandle: anAddress memory: aMemory
	| metaclassForTrait |
	(aMemory formatOf: anAddress) = 1 ifFalse: [ ^ false ].
	(aMemory isInClassTable: anAddress) ifFalse: [ ^ false ].
	
	metaclassForTrait := aMemory metaclassForTraitIndex.
	metaclassForTrait ifNil: [ ^ false ].

	^ (aMemory classIndexOf: anAddress) = metaclassForTrait