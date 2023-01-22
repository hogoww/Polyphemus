inspection
containedInspectionItems
	| res slotNames |
	res := OrderedCollection new: self oopNumberOfSlots + 1.
	res add: (#oopNumberOfSlots -> self oopNumberOfSlots).
	slotNames := self oopClass allOopSlotNames.
	slotNames doWithIndex: [ :aSlotName :anIndex | 
			res add: '(' , anIndex asString , ') ' , aSlotName asString -> (self reifiedSlotAt: anIndex)
		].
	slotNames size + 1 to: self oopNumberOfSlots do: [ :anIndex |
		res add: ('slot ', anIndex printString -> (self reifiedSlotAt: anIndex))
		].
	^ res