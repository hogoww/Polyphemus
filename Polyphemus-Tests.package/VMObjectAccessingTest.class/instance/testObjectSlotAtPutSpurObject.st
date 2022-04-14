tests
testObjectSlotAtPutSpurObject
	| oop slot1 |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	slot1 := self objectForOop: self newZeroSizedObject.
	oop slotAt: 1 put: slot1.
	self assert: (oop slotAt: 1) equals: slot1.