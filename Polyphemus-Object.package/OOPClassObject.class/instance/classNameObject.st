testing
classNameObject
	| slotIndex |
	slotIndex := self class slotIndexForClassName.
	^ self reifiedSlotAt: slotIndex