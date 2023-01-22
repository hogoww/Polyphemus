inspection
containedInspectionItems
	| res |
	res := OrderedCollection new.
	res add: ('Index in Class Table' -> self oopPageIndex).
	res add: (#size -> self oopNumberOfSlots).
	self allReifiedSlots doWithIndex: [ :aSlot :anIndex |
		aSlot isNilOop ifFalse: [ 
			res add: ('Class ' , anIndex printString -> aSlot) ]].
	^ res