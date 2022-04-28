initialization
testSlotAtPutAnObjectOop
	| index slot |
	index := 1.
	slot := self newZeroSizedObject.
	fixedLayoutObject slotAt: index put: (self objectForOop: slot).
	self assert: (fixedLayoutObject slotAt: index) equals: slot