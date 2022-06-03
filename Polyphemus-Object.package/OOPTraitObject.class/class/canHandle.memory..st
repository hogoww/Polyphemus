testing
canHandle: anAddress memory: aMemory

	| metaclassForTrait |
	metaclassForTrait := aMemory metaclassForTrait.
	metaclassForTrait ifNil: [ ^ false ].

	^(aMemory fetchClassOf: (aMemory fetchClassOf: anAddress))
	        = metaclassForTrait.