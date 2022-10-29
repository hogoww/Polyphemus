tests
testReifyingImmediateIdentifiesIt
	| oop slot |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	slot := memory integerObjectOf: 42.
	oop slotAt: 1 put: slot.
	self assert: (oop reifiedSlotAt: 1) isImmediateOop