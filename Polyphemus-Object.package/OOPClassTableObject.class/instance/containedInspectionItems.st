inspection
containedInspectionItems
	| res |
	res := OrderedCollection new: classTablePages size. 
	res add: (#numOfClassTablePage -> classTablePages size).
	classTablePages doWithIndex: [ :aSlot :anIndex | 
		res add: ('ClassTablePage ' , anIndex printString -> aSlot).
		].
	memory classTableRootSlots to: self oopNumberOfSlots do: [ :anIndex | 
		res add: ('Slot ' , anIndex printString -> (self reifiedSlotAt: anIndex)).
		].
	^ res