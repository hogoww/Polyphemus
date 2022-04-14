tests
testAllSlot
	| oop slot1 |
	oop := self objectForOop: (self newObjectWithSlots: 1 classIndex: 1024).
	slot1 := self objectForOop: self newZeroSizedObject.
	oop slotAt: 1 put: slot1.
	self assert: oop allSlots equals: { slot1 }.