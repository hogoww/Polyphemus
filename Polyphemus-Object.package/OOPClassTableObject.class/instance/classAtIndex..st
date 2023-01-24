accessing-classes
classAtIndex: anIndex
	^ (self reifiedSlotAt: anIndex - 1 // 1024 + 1) slotAt: anIndex % 1024