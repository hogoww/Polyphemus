instance creation
canHandle: anAddress memory: aMemory
	| metaclassForTrait |
	(aMemory formatOf: anAddress) = 1 ifFalse: [ ^ false ].
	
	metaclassForTrait := aMemory metaclassForTrait.
	metaclassForTrait ifNil: [ ^ false ].

	^ (aMemory fetchClassOf: anAddress) = aMemory metaclassForTrait