inspection
containedInspectionItems
	| counter res |
	counter := 0.
	res := OrderedCollection new: self oopNumberOfSlots + 1.
	res add: (#numIndexedElements -> self oopNumberOfSlots).
	self allIndexed collect: [ :aSlot | | slot |
		counter := counter + 1.
		slot := (memory objectAt: aSlot) ifNotNil: [ :anOop | anOop ] ifNil: [ aSlot ] .
		'element ', counter printString -> slot.
		] into: res.
	^ res