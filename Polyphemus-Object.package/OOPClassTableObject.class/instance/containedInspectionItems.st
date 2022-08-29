testing
containedInspectionItems
	| res |
	res := OrderedCollection new: classTablePages size. 
	res add: (#numOfClassTablePage -> classTablePages size).
	classTablePages doWithIndex: [ :aSlot :anIndex | 
		res add: ('ClassTablePage ' , anIndex printString -> aSlot).
		].
	memory classTableRootSlots to: self numSlots do: [ :anIndex | 
		res add: ('Slot ' , anIndex printString -> (self reifiedSlotAt: anIndex)).
		].
	^ res