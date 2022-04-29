accessing
allSlots 
	^ (1 to: object numSlots) 
		collect: [ :anIndex | self slotAt: anIndex ]