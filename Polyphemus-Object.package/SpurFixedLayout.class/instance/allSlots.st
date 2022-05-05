gt-inspector-extension
allSlots 
	^ (1 to: self object numSlots) collect: [ :index | self object reifiedSlotAt: index ]