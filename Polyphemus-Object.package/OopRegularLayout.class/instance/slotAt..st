accessing
slotAt: anIndex
	self checkSlotAccessIndex: anIndex.
	^ object reifyOop: (object fetchPointer: anIndex - 1)