inspection
containedInspectionItems
	| res slotNames counter |
	res := OrderedCollection new: self numSlots + 1.
	res add: (#numSlots -> self numSlots).
	slotNames := self oopClass allOopSlotNames.
	slotNames ifNotEmpty: [ 
		slotNames doWithIndex: [ :aSlotName :anIndex | 
		res add: aSlotName -> (self reifiedSlotAt: anIndex)
		].
	^ res
	].
	"fallback case for indexable ect"
	counter := 0.
	res := OrderedCollection new: self numSlots + 1.
	res add: (#numSlots -> self numSlots).
	self allElements collect: [ :aSlot | 
		counter := counter + 1.
		('slot', counter printString) -> aSlot.
		] into: res.
	^ res