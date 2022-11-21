testing
references: anOop
	^ self allReifiedSlots anySatisfy: [ :aSlot | aSlot = anOop ]