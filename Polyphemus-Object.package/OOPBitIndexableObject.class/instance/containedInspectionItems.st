accessing
containedInspectionItems
	| counter res |
	counter := 0.
	res := OrderedCollection new: self numSlots + 1.
	res add: (#numIndexedElements -> self numSlots).
	self allElements collect: [ :aSlot | 
		counter := counter + 1.
		('element', counter printString) -> aSlot.
		] into: res.
	^ res