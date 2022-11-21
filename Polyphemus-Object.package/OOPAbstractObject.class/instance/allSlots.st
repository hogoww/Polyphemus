accessing-slots
allSlots

	| layout slotScope result numSlots |
	layout := self oopClassLayout.
	slotScope := layout reifiedSlotAt: 2.
	"Now we should handle the parent scope but for nom it does not"
	result := OrderedCollection new.
	numSlots := slotScope numSlots.
	2 to: numSlots do: [:anIndex | |aScope|"we should check if the scope is visible"
		aScope := slotScope reifiedSlotAt: anIndex.
		aScope oopClassName = 'BaseSlot' ifFalse: [ result add: aScope ]
		 ].
	
	^result