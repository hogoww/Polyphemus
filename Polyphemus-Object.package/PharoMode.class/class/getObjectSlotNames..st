accessing
getObjectSlotNames: aClassOop
	| res |
	layout := (aClassOop reifiedSlotAt: 4) reifiedSlotAt: 2.
	res := OrderedCollection new.
	2 to: layout numSlots do: [ :anIndex | | aSlot |
		aSlot := layout reifiedSlotAt: anIndex.
		res add: (aSlot reifiedSlotAt: 1) ].
	^ res