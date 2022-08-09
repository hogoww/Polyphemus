query
allReferencers
	^ memory select: [ :anOop | 
		anOop allSlots anySatisfy: [ :aSlot | aSlot = self ] ].