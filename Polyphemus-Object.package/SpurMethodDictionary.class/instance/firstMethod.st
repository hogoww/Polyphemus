accessing
firstMethod

	| index arrayOfMethod |
	index := self firstSelectorIndex.

	arrayOfMethod := self reifiedSlotAt: 2.
	^arrayOfMethod reifiedSlotAt: index.
	