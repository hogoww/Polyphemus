printing
classNameObject
	| slotIndex |
	slotIndex := self class slotIndexForMetaClassName.
	^ (self reifiedSlotAt: slotIndex) classNameObject