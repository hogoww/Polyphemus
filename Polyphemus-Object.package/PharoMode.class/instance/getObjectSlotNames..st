accessing
getObjectSlotNames: aClassOop
	| res layout |
	layout := (aClassOop reifiedSlotAt: 4) reifiedSlotAt: 2.
	res := OrderedCollection new.
	2 to: layout oopNumberOfSlots do: [ :anIndex | | aSlot |
		aSlot := layout reifiedSlotAt: anIndex.
		res add: (aSlot reifiedSlotAt: 1) ].
	^ res