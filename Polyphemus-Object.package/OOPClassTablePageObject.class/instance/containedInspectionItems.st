testing
containedInspectionItems
	| res |
	res := OrderedCollection new.
	res add: (#size -> self numSlots).
	self allSlots doWithIndex: [ :aSlot :anIndex |
		aSlot isNilOop ifFalse: [ 
			res add: ('Class ' , anIndex printString -> aSlot) ]].
	^ res