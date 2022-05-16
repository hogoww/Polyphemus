printing
containedInspectionItems
	| counter res |
	counter := 0.
	res := OrderedCollection new: self numSlots + 1.
	res add: (#numIndexedElements -> self numSlots).
	self allElements collect: [ :anElement | | object |
		counter := counter + 1.
		object :=  (memory objectAt: anElement) ifNil: [ anElement ].
		('element', counter printString) -> object.
		] into: res.
	^ res