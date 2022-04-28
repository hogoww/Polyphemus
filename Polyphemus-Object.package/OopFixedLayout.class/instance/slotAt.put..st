accessing
slotAt: anIndex put: anObjectOrOop
	
	self checkSlotAccessIndex: anIndex.

	^ object
		  storePointer: anIndex - 1
		  withValue: anObjectOrOop value