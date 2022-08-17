as yet unclassified
clearFreeLists

	| freeLists |
	freeLists := self reifyOop: self freeListsObj.
	freeLists allIndexed doWithIndex: [ :aSlot :anIndex | 
		freeLists indexedAt: anIndex put: 0 ].