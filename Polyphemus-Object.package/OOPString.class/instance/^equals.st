comparing
= aString

	aString isSymbol ifTrue: [ ^self asString asSymbol = aString ].
	^self asString = aString