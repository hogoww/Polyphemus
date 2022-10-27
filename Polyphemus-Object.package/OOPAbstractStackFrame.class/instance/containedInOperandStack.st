inspection
containedInOperandStack
	| res slotNames |
	res := OrderedCollection new: self numSlots + 1.
	res add: (#numSlots -> self numSlots).
	slotNames := self oopClass allOopSlotNames.
	slotNames doWithIndex: [ :aSlotName :anIndex | 
			res add: aSlotName -> (self reifiedSlotAt: anIndex)
		].
	slotNames size + 1 to: self numSlots do: [ :anIndex |
		res add: ('slot ', anIndex printString -> (self reifiedSlotAt: anIndex))
		].
	^ res