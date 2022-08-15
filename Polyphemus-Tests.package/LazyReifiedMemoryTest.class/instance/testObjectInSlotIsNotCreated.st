tests
testObjectInSlotIsNotCreated
	| oop slot |
	oop := self reifyOop: (self newObjectWithSlots: 1).
	slot := self newZeroSizedObject.
	oop slotAt: 1 put: slot.
	
	reifiedMemory := LazyReifiedMemory on: memory.
	
	self assert: (reifiedMemory objectAt: slot) isNil