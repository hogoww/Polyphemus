accessing-slots
allSlots 
	^ (1 to: self numSlots) 
		collect: [ :anIndex | self reifiedSlotAt: anIndex ]