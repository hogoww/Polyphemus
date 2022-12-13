debugger
allVisibleSlots

	| slotScope |
	self oopClassName = 'ByteLayout' ifTrue: [ ^ {  } ].

	slotScope := self reifiedSlotAt: 2.

	^slotScope slotScopeVisibleSlots.	