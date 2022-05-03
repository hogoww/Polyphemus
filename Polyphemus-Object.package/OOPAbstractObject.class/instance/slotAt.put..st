accessing-slots
slotAt: anIndex put: anObjectOrOop
	
	self checkSlotAccessIndex: anIndex.

	^ self
		  storePointer: anIndex - 1
		  withValue: anObjectOrOop value