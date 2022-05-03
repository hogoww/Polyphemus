tests
testObjectSlotAtPutAddress
	| oop slot1 |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	slot1 := self newZeroSizedObject.
	oop slotAt: 1 put: slot1.
	self assert: (oop slotAt: 1) address equals: slot1.