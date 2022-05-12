printing
classNameObject
	| slotIndex |
	slotIndex := self slotIndexForClassName.
	^ (self reifiedSlotAt: slotIndex) classNameObject