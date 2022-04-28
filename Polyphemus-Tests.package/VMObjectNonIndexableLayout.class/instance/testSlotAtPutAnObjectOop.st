initialization
testSlotAtPutAnObjectOop
	| index slot |
	index := 1.
	slot := self newZeroSizedObject.
	nonIndexableLayoutObject slotAt: index put: (self objectForOop: slot).
	self assert: (nonIndexableLayoutObject slotAt: index) equals: slot