accessing-classes
classAtIndex: anIndex put: anOop
	(self reifiedSlotAt: anIndex - 1 // 1024 + 1) slotAt: anIndex % 1024 put: anOop