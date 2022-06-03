naming
traitNameObject
	
	| slotIndex |
	slotIndex := self class traitIndexForName.
	^self reifiedSlotAt: slotIndex