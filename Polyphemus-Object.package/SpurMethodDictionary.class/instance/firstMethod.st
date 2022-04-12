accessing
firstMethod

	| index arrayOfMethod |
	index := self firstSelectorIndex.

	arrayOfMethod := self slotAt: 2.
	^arrayOfMethod slotAt: index.
	