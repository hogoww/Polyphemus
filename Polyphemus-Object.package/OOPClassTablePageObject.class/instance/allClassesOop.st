enumerating
allClassesOop
	^ (1 to: self oopNumberOfSlots) 
		reject: [ :anIndex| (self slotAt: anIndex) = memory nilObject ] 
		thenCollect: [ :anIndex | (self reifiedSlotAt: anIndex) ]