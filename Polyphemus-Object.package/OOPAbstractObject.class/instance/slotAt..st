accessing
slotAt: anIndex
	self checkSlotAccessIndex: anIndex.
	^ self reifyOop: (self fetchPointer: anIndex - 1)