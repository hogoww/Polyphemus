accessing
allSlots 
	^ (1 to: object numSlots) collect: [ :index | self slotAt: index ]