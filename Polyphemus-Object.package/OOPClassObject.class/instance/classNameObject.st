testing
classNameObject
	| slotIndex |
	slotIndex := self slotIndexForClassName.
	^ self reifiedSlotAt: slotIndex