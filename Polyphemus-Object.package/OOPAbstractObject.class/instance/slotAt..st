accessing
slotAt: anIndex
	self checkSlotAccessIndex: anIndex.
	^ self fetchPointer: anIndex - 1