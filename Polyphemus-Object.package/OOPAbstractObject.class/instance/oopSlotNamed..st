accessing
oopSlotNamed: aString 
	| slotIndex |
	self oopClass allOopSlotNames doWithIndex: [ :o :i | o asString = aString ifTrue: [ slotIndex := i ] ].
	^ slotIndex ifNotNil: [ self reifiedSlotAt: slotIndex ]