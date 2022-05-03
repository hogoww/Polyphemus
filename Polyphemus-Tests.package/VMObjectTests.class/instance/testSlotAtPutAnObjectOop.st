initialization
testSlotAtPutAnObjectOop
	| index slot |
	index := 1.
	slot := self newZeroSizedObject.
	self testedObject slotAt: index put: (self reifyOop: slot).
	self assert: (self testedObject slotAt: index) equals: slot