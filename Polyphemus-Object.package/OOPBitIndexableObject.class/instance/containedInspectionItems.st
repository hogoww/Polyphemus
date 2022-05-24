accessing
containedInspectionItems
	| counter res |
	counter := 0.
	res := OrderedCollection new: self numElements + 1.
	res add: (#numIndexedElements -> self numElements).
	self allElements collect: [ :aSlot | 
		counter := counter + 1.
		('element', counter printString) -> aSlot.
		] into: res.
	^ res