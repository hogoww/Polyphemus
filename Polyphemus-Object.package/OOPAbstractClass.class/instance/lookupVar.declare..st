debugger
lookupVar: aName declare: aBoolean 
	| layoutScope |
	"this should be extracted in a method and we should handle the parent scope and this should be with the mode"
	layoutScope := (self reifiedSlotAt: 4) reifiedSlotAt: 2.
	2 to: layoutScope numSlots do: [ :anIndex | | aSlot |
		aSlot := (layoutScope reifiedSlotAt: anIndex) .
		(aSlot reifiedSlotAt: 1) asString = aName ifTrue: [^aSlot ]
		 ].
	"If we arrive here we did not find, we do plan B"
	^self bindingOf: aName