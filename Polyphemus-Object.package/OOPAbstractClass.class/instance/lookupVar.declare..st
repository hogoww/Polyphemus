debugger
lookupVar: aName declare: aBoolean 
	| layoutScope layout |
	"this should be extracted in a method and we should handle the parent scope and this should be with the mode"
	layout := (self reifiedSlotAt: 4).
	"this should be a switch case"
	layout oopClassName = 'ByteLayout' ifTrue: [^self bindingOf: aName].
	layout oopClassName = 'CompiledMethodLayout' ifTrue: [^self bindingOf: aName].
	layoutScope := layout reifiedSlotAt: 2.
	2 to: layoutScope numSlots do: [ :anIndex | | aSlot |
		aSlot := (layoutScope reifiedSlotAt: anIndex) .
		(aSlot reifiedSlotAt: 1) asString = aName ifTrue: [^aSlot ]
		 ].
	"If we arrive here we did not find, we do plan B"
	^self bindingOf: aName