tests
testObjectSlotAt
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	self assert: (oop reifiedSlotAt: 1) address equals: memory nilObject.