accessing
slotAt: anIndex
	self checkSlotAccessIndex: anIndex.
	OOPAbstractEntity newFor: (object fetchPointer: anIndex - 1) image: object image