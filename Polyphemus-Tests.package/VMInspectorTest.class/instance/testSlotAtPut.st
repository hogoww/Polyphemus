tests
testSlotAtPut

	| objectOop1 object1 objectOop2 object2 |
	objectOop1 := self newObjectWithSlots: 1.
	objectOop2 := self newObjectWithSlots: 1.
	
	object1 := (image objectForOop: objectOop1).
	object2 := (image objectForOop: objectOop2).
	
	object1 slotAt: 1 put: object2.
	object2 slotAt: 1 put: object1.

	self assert: (object1 slotAt: 1) address equals: object2.