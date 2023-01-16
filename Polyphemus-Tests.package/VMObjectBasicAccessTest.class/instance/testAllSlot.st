tests
testAllSlot
	| oop slot1 |
	oop := self reifyOop: (self newObjectWithSlots: 1 classIndex: 1024).
	slot1 := self reifyOop: self newZeroSizedObject.
	oop slotAt: 1 put: slot1.
	self assert: oop allReifiedSlots equals: { slot1 }.