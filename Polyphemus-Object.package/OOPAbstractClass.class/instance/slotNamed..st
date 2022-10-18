accessing
slotNamed: aString
	| slotIndex |
	self oopClassSide allOopSlotNames doWithIndex: [ :o :i | o asString = aString ifTrue: [ slotIndex := i ] ].
	^ self reifiedSlotAt: slotIndex