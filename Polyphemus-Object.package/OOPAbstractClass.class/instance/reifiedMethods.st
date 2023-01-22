querying
reifiedMethods
	| methodDict |
	methodDict := self reifiedMethodDictionary reifiedSlotAt: 2.
	^ (3 to: methodDict oopNumberOfSlots) collect: [ :anIndex |
		methodDict reifiedSlotAt: anIndex
		] thenSelect: [ :anOop | anOop isNilOop not ].