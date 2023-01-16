accessing-slots
indexedAt: anIndex put: anObject 
	 self storePointer: anIndex - 1  withValue: anObject 