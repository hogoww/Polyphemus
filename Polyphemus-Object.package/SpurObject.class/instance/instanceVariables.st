accessing-slots
instanceVariables
	^ (1 to: self numSlots) collect: [ :index | self slotAt: index ]