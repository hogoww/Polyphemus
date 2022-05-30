inspection
containedInspectionItems
	| counter res |
	counter := 0.
	res := OrderedCollection new: self numSlots + 1.
	res add: (#numSlots -> self numSlots).
	self allIndexed collect: [ :aSlot | 
		counter := counter + 1.
		('slot', counter printString) -> aSlot.
		] into: res.
	^ res