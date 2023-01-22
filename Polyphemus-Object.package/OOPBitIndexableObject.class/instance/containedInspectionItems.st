inspection
containedInspectionItems
	| counter res |
	counter := 0.
	res := OrderedCollection new: self oopNumberOfIndexed + 1.
	res add: (#numIndexedElements -> self oopNumberOfIndexed).
	self allIndexed collect: [ :aSlot | 
		counter := counter + 1.
		'element ' , counter printString -> aSlot.
		] into: res.
	^ res