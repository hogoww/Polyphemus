accessing-slots
allSlots
	"needs refactor to return the raw value of a slot, and move the reification"
	^ (1 to: self numSlots)
		collect: [ :anIndex | self reifiedSlotAt: anIndex ]