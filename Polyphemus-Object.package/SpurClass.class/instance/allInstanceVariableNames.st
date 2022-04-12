accessing - instance variables
allInstanceVariableNames
	^ (1 to: self numberOfSlots) collect: [ :index | self slotAt: index ] .