testing
references: anOop
	^ self allSlots anySatisfy: [ :aSlot | aSlot = anOop ]