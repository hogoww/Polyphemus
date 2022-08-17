inspection
containedInspectionItems
	| res |
	res := OrderedCollection new: self numSlots + 1.
	res add: (#numSlots -> self numSlots).
	self oopClass allOopSlotNames doWithIndex: [ :aSlotName :anIndex | 
		res add: aSlotName -> (self reifiedSlotAt: anIndex)
		].
	^ res