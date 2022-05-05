tests
testObjectSlotAtPutSpurObject
	| oop slot1 |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	slot1 := self reifyOop: self newZeroSizedObject.
	oop slotAt: 1 put: slot1.
	self assert: (oop reifiedSlotAt: 1) equals: slot1.