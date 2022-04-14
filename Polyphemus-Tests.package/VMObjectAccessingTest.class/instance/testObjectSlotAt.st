tests
testObjectSlotAt
	| oop |
	oop := self objectForOop: (self newObjectWithSlots: 1).
	self assert: (oop slotAt: 1) address equals: memory nilObject.