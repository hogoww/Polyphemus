debugger
slotScopeVisibleSlots

	| result parentScope numSlots |
	self oopClassName = 'LayoutEmptyScope' ifTrue: [ ^{} ].
	result := OrderedCollection new.
	parentScope := self reifiedSlotAt: 1.
	result addAll: parentScope slotScopeVisibleSlots.
	numSlots := self numSlots.
	2 to: numSlots do: [ :anIndex | 
		| aSlot |
		aSlot := self reifiedSlotAt: anIndex.
		aSlot oopClassName = 'BaseSlot' ifFalse: [ result add: aSlot ] ].
	^result