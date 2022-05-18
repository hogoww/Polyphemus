tests
testAccessingObjectWithSlotsIsIdenticalToDirectReferenceToObject
	| oop slot objectOop |
	oop := self newObjectWithSlots: 1.
	slot := self newZeroSizedObject.
	reifiedMemory update.
	objectOop := self reifyOop: oop.
	objectOop slotAt: 1 put: slot.
	self assert: ((self reifyOop: oop) reifiedSlotAt: 1) identicalTo: (self reifyOop: slot)